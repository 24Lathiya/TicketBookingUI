import 'dart:convert';

import 'package:get/get.dart';
import 'package:ticket_booking_app/model/ticket_model.dart';
import 'package:ticket_booking_app/repository/ticket_repository.dart';

class TicketController extends GetxController implements GetxService {
  final TicketRepository ticketRepository;
  TicketController({required this.ticketRepository});
  List<Tickets> _ticketList = [];
  List<Tickets> get ticketList => _ticketList;
  Future<void> getTicketList() async {
    var response = await ticketRepository.getTickets();
    var ticket = Ticket.fromJson(jsonDecode(response));
    _ticketList = [];
    _ticketList.addAll(ticket.tickets!);
    update(); // don't forgot to update
  }
}
