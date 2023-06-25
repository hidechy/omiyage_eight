import 'package:flutter/widgets.dart';

abstract class ProductCassetteNotification extends Notification {}

class ProductSelectNotification extends ProductCassetteNotification {}

class AddToCartNotification extends ProductCassetteNotification {}
