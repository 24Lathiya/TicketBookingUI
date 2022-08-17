import 'package:get/get.dart';
import 'package:ticket_booking_app/data/api_client.dart';

class TicketRepository extends GetxService {
  final ApiClient apiClient;
  TicketRepository({required this.apiClient});

  Future<String> getTickets() async {
    return await apiClient.getData("assets/json/ticket.json");
  }
}
