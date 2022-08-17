import 'package:get/get.dart';
import 'package:ticket_booking_app/controller/hotel_controller.dart';
import 'package:ticket_booking_app/controller/ticket_controller.dart';
import 'package:ticket_booking_app/data/api_client.dart';
import 'package:ticket_booking_app/repository/hotel_repository.dart';
import 'package:ticket_booking_app/repository/ticket_repository.dart';

Future<void> init() async {
  Get.lazyPut(() => ApiClient());
  Get.lazyPut(() => TicketRepository(apiClient: Get.find()));
  Get.lazyPut(() => HotelRepository(apiClient: Get.find()));

  Get.lazyPut(() => TicketController(ticketRepository: Get.find()));
  Get.lazyPut(() => HotelController(hotelRepository: Get.find()));
}
