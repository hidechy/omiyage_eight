import 'dart:async';
import 'dart:io';
import 'dart:ui';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

import 'package:collection/collection.dart';
import 'package:flutter_cache_manager/flutter_cache_manager.dart';
import 'package:get_it/get_it.dart';
import 'package:provider/provider.dart';

import '../../util/basic_authentication_manager.dart';
import '../../util/iyns_cache_manager.dart';

typedef ImageWidgetBuilder = Widget Function(BuildContext context, Widget child);
typedef ImagePlaceholderBuilder = Widget Function(BuildContext context);
typedef ImageLoadingBuilder = Widget Function(BuildContext context, ImageChunkEvent? loadingProgress);

class AppCachedNetworkImage extends StatelessWidget {
  const AppCachedNetworkImage({
    Key? key,
    required this.imageUrl,
    this.httpHeaders,
    this.imageBuilder,
    this.placeholderBuilder,
    this.loadingBuilder,
    this.errorBuilder,
    this.width,
    this.height,
    this.fit = BoxFit.contain,
    this.alignment = Alignment.center,
    this.cacheWidth,
    this.cacheHeight,
  }) : super(key: key);

  final String imageUrl;
  final Map<String, String>? httpHeaders;
  final ImageWidgetBuilder? imageBuilder;
  final ImagePlaceholderBuilder? placeholderBuilder;
  final ImageLoadingBuilder? loadingBuilder;
  final ImageErrorWidgetBuilder? errorBuilder;
  final double? width;
  final double? height;
  final BoxFit fit;
  final Alignment alignment;
  final int? cacheWidth;
  final int? cacheHeight;

  @override
  Widget build(BuildContext context) {
    final basicAuthHeaders = context.select((BasicAuthenticationState state) => state.base64Header);
    final headers = <String, String>{
      if (GetIt.I<BasicAuthenticationManager>().urlTrusted(Uri.tryParse(imageUrl))) ...?basicAuthHeaders,
      ...?httpHeaders,
    };
    return Image(
      key: ValueKey(imageUrl),
      image: ResizeImage.resizeIfNeeded(
        cacheWidth,
        cacheHeight,
        _AppNetworkImage(
          imageUrl,
          headers: headers,
          cacheManager: iynsCacheManager,
        ),
      ),
      frameBuilder: placeholderBuilder == null && imageBuilder == null
          ? null
          : (context, child, frame, _) {
              if (frame == null && placeholderBuilder != null) {
                return placeholderBuilder!(context);
              }
              if (imageBuilder != null) {
                return imageBuilder!(context, child);
              }
              return child;
            },
      loadingBuilder: loadingBuilder == null ? null : (context, _, event) => loadingBuilder!(context, event),
      errorBuilder: errorBuilder,
      width: width,
      height: height,
      fit: fit,
      alignment: alignment,
    );
  }
}

class _AppNetworkImage extends ImageProvider<_AppNetworkImage> {
  const _AppNetworkImage(this.url, {this.headers, this.cacheManager});

  final String url;

  final Map<String, String>? headers;

  final BaseCacheManager? cacheManager;

  @override
  Future<_AppNetworkImage> obtainKey(ImageConfiguration configuration) {
    return SynchronousFuture(this);
  }

  @override
  ImageStreamCompleter loadBuffer(_AppNetworkImage key, DecoderBufferCallback decode) {
    final chunkEvents = StreamController<ImageChunkEvent>();

    return MultiFrameImageStreamCompleter(
      codec: _loadAsync(key, chunkEvents, decode),
      chunkEvents: chunkEvents.stream,
      scale: 1,
      debugLabel: key.url,
      informationCollector: () {
        return <DiagnosticsNode>[
          DiagnosticsProperty<ImageProvider>('Image provider', this),
          DiagnosticsProperty<_AppNetworkImage>('Image key', key),
        ];
      },
    );
  }

  Future<Codec> _loadAsync(
    _AppNetworkImage key,
    StreamController<ImageChunkEvent> chunkEvents,
    DecoderBufferCallback decode,
  ) async {
    assert(key == this);

    final cacheManager = this.cacheManager ?? DefaultCacheManager();

    try {
      if (url.isEmpty) {
        throw ArgumentError('空の値が渡されています。', 'imageUrl');
      }
      final bytes = Completer<Uint8List>();
      await for (final response in cacheManager.getFileStream(url, headers: headers, withProgress: true)) {
        if (response is DownloadProgress) {
          chunkEvents.add(ImageChunkEvent(
            cumulativeBytesLoaded: response.downloaded,
            expectedTotalBytes: response.totalSize,
          ));
        }
        if (response is FileInfo) {
          if (!bytes.isCompleted) {
            bytes.complete(response.file.readAsBytes());
          }
        }
      }
      return decode(await ImmutableBuffer.fromUint8List(await bytes.future));
    } on HttpExceptionWithStatus catch (e, _) {
      // 404以外の場合は描画キャッシュから削除することで自動的に画像を再取得する
      if (e.statusCode != HttpStatus.notFound) {
        scheduleMicrotask(() {
          PaintingBinding.instance.imageCache.evict(key);
        });
      }
      rethrow;
    } catch (_, __) {
      scheduleMicrotask(() {
        PaintingBinding.instance.imageCache.evict(key);
      });
      rethrow;
    } finally {
      chunkEvents.close();
    }
  }

  @override
  bool operator ==(Object other) {
    if (other.runtimeType != runtimeType) return false;
    return other is _AppNetworkImage &&
        other.url == url &&
        const DeepCollectionEquality().equals(other.headers, headers);
  }

  @override
  int get hashCode => Object.hash(
        runtimeType,
        const DeepCollectionEquality().hash(url),
        const DeepCollectionEquality().hash(headers),
      );

  @override
  String toString() => 'AppNetworkImage(url: $url)';
}
