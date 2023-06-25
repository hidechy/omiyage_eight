// ignore_for_file: prefer_void_to_null

import 'package:flutter_test/flutter_test.dart';

import 'package:netsuper/data/api/model/response_model.dart';

void main() {
  test(
    'ResponseModelの引数テスト',
    () {
      expect(
        ResponseModel<Null>.fromJson(null).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson('').data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(0).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(0.0).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(<dynamic>[]).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(<dynamic>{}).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(<int, dynamic>{}).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(<double, dynamic>{}).data,
        <Null>[],
      );
      expect(
        ResponseModel<Null>.fromJson(<String, dynamic>{}).data,
        <Null>[],
      );
    },
  );
  test(
    'Response型変換のテスト',
    () {
      expect(
        ResponseModel<Null>.fromJson(<String, dynamic>{
          'data': <Map<String, dynamic>>[
            <String, dynamic>{'test': 'fail'},
          ],
        }).data,
        [null],
      );
      // この使い方(dataがnull)だと例外は出ない
      expect(
        ResponseModel<dynamic>.fromJson(<String, dynamic>{}).data,
        <dynamic>[],
      );
      // この使い方(dataが空)だと例外は出ない
      expect(
        ResponseModel<dynamic>.fromJson(<String, dynamic>{'data': <dynamic>[]}).data,
        <dynamic>[],
      );
      // dataが空でない場合例外が出る。
      expect(
        () => ResponseModel<dynamic>.fromJson(<String, dynamic>{
          'data': <Map<String, dynamic>>[
            <String, dynamic>{'test': 'fail'},
          ],
        }),
        throwsStateError,
      );
      // この使い方(dataがnull)だと例外は出ない
      expect(
        ResponseModel<void>.fromJson(<String, dynamic>{}).data,
        <dynamic>[],
      );
      // この使い方(dataが空)だと例外は出ない
      expect(
        ResponseModel<void>.fromJson(<String, dynamic>{'data': <dynamic>[]}).data,
        <dynamic>[],
      );
      // dataが空でない場合例外が出る。
      expect(
        () => ResponseModel<void>.fromJson(<String, dynamic>{
          'data': <Map<String, dynamic>>[
            <String, dynamic>{'test': 'fail'},
          ],
        }),
        throwsStateError,
      );
      // この使い方(dataがnull)だと例外は出ない
      expect(
        ResponseModel<Object>.fromJson(<String, dynamic>{}).data,
        <dynamic>[],
      );
      // この使い方(dataが空)だと例外は出ない
      expect(
        ResponseModel<Object>.fromJson(<String, dynamic>{'data': <dynamic>[]}).data,
        <dynamic>[],
      );
      // dataが空でない場合例外が出る。
      expect(
        () => ResponseModel<Object>.fromJson(<String, dynamic>{
          'data': <Map<String, dynamic>>[
            <String, dynamic>{'test': 'fail'},
          ],
        }),
        throwsStateError,
      );
      // この使い方(dataがnull)だと例外は出ない
      expect(
        ResponseModel<Object?>.fromJson(<String, dynamic>{}).data,
        <dynamic>[],
      );
      // この使い方(dataが空)だと例外は出ない
      expect(
        ResponseModel<Object?>.fromJson(<String, dynamic>{'data': <dynamic>[]}).data,
        <dynamic>[],
      );
      // dataが空でない場合例外が出る。
      expect(
        () => ResponseModel<Object?>.fromJson(<String, dynamic>{
          'data': <Map<String, dynamic>>[
            <String, dynamic>{'test': 'fail'},
          ],
        }),
        throwsStateError,
      );
    },
  );
}
