import 'package:get/get.dart';
import 'package:ticket_booking_app/data/api_client.dart';

class HotelRepository extends GetxService {
  final ApiClient apiClient;
  HotelRepository({required this.apiClient});

  Future<String> getHotels() async {
    return await apiClient.getData("assets/json/hotel.json");
  }
}
