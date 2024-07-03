import 'package:get/get.dart';
import 'package:pet_app/Models/product.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class BestsellerController extends GetxController {
  var isLoading = true.obs;
  var bestsellerList = <Product>[].obs;

  @override
  void onInit() {
    fetchProducts();
    super.onInit();
  }

  Future<void> fetchProducts() async {
    try {
      isLoading(true);
      final response = await http.get(Uri.parse('http://localhost:3000/products'));
      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = jsonDecode(response.body);
        final products = jsonResponse.map((product) {
          try {
            return Product.fromJson(product);
          } catch (e) {
            print('Error parsing product: $product, error: $e'); // Debugging: Print the problematic product
            return null;
          }
        }).whereType<Product>().toList();
        bestsellerList.assignAll(products);
      } else {
        throw Exception('Failed to load products, status code: ${response.statusCode}');
      }
    } catch (e) {
      throw Exception('Failed to load products: $e');
    } finally {
      isLoading(false);
    }
  }
}
