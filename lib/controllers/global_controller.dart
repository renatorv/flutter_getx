import 'dart:convert';

import 'package:flutter/services.dart';
import 'package:flutter_getx/models/product.dart';
import 'package:get/state_manager.dart';

class GlobalController extends GetxController {
  List<Product> _products = [];
  List<Product> get products => _products;

  @override
  void onInit() {
    super.onInit();

    _loadProducts();
  }

  Future<void> _loadProducts() async {
    final String productsString =
        await rootBundle.loadString('assets/products.json');

    // Converter a lista produtos string em uma lista de produtos
    // classe 10..... 9 minutos
    this._products = (jsonDecode(productsString) as List)
        .map((e) => Product.fromJson(e))
        .toList();

    print('🤜  Products');

    update(['products']);
  }
}
