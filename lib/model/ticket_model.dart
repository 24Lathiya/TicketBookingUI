class Ticket {
  List<Tickets>? tickets;

  Ticket({this.tickets});

  Ticket.fromJson(Map<String, dynamic> json) {
    if (json['tickets'] != null) {
      tickets = <Tickets>[];
      json['tickets'].forEach((v) {
        tickets!.add(new Tickets.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.tickets != null) {
      data['tickets'] = this.tickets!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Tickets {
  From? from;
  From? to;
  String? flyingTime;
  String? date;
  String? departureTime;
  int? number;

  Tickets(
      {this.from,
      this.to,
      this.flyingTime,
      this.date,
      this.departureTime,
      this.number});

  Tickets.fromJson(Map<String, dynamic> json) {
    from = json['from'] != null ? new From.fromJson(json['from']) : null;
    to = json['to'] != null ? new From.fromJson(json['to']) : null;
    flyingTime = json['flying_time'];
    date = json['date'];
    departureTime = json['departure_time'];
    number = json['number'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.from != null) {
      data['from'] = this.from!.toJson();
    }
    if (this.to != null) {
      data['to'] = this.to!.toJson();
    }
    data['flying_time'] = this.flyingTime;
    data['date'] = this.date;
    data['departure_time'] = this.departureTime;
    data['number'] = this.number;
    return data;
  }
}

class From {
  String? code;
  String? name;

  From({required this.code, required this.name});

  From.fromJson(Map<String, dynamic> json) {
    code = json['code'];
    name = json['name'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['code'] = this.code;
    data['name'] = this.name;
    return data;
  }
}
