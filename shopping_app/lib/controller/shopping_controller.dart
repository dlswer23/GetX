import 'package:get/get.dart';

import '../model/product.dart';

class ShoppingController extends GetxController {
  var products = <Product>[].obs;

  @override
  void onInit() {
    super.onInit();
    fetchData();
  }

  void fetchData() async {
    await Future.delayed(Duration(seconds: 2));
    var productData = [
      Product(
          id: 1,
          productName: 'Ram',
          productDescription: 'productDescription',
          price: 30),
      Product(
          id: 2,
          productName: 'Monitor',
          productDescription: 'productDescription',
          price: 20),
      Product(
          id: 3,
          productName: 'Sam',
          productDescription: 'productDescription',
          price: 10),
      Product(
          id: 4,
          productName: 'Hero',
          productDescription: 'productDescription',
          price: 36),
    ];

    products.assignAll(productData);
  }
}
