import 'package:flutter/services.dart';
import 'package:get/get.dart';

class ApiClient extends GetConnect implements GetxService {
  Future<String> getData(String url) async {
    final response = await rootBundle.loadString(url);
    //   print("===response=== $response");
    return response;
  }
}
