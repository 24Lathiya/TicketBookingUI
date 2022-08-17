import 'dart:convert';

import 'package:get/get.dart';
import 'package:ticket_booking_app/model/hotel_model.dart';
import 'package:ticket_booking_app/repository/hotel_repository.dart';

class HotelController extends GetxController implements GetxService {
  final HotelRepository hotelRepository;
  HotelController({required this.hotelRepository});
  List<Hotels> _hotelList = [];
  List<Hotels> get hotelList => _hotelList;
  Future<void> getHotelList() async {
    var response = await hotelRepository.getHotels();
    var hotel = Hotel.fromJson(jsonDecode(response));
    _hotelList = [];
    _hotelList.addAll(hotel.hotels!);
    update(); // don't forgot to update
  }
}
