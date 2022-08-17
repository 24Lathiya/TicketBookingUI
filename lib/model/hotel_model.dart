class Hotel {
  List<Hotels>? hotels;

  Hotel({this.hotels});

  Hotel.fromJson(Map<String, dynamic> json) {
    if (json['hotels'] != null) {
      hotels = <Hotels>[];
      json['hotels'].forEach((v) {
        hotels!.add(new Hotels.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    if (this.hotels != null) {
      data['hotels'] = this.hotels!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Hotels {
  String? image;
  String? place;
  String? destination;
  int? price;

  Hotels({this.image, this.place, this.destination, this.price});

  Hotels.fromJson(Map<String, dynamic> json) {
    image = json['image'];
    place = json['place'];
    destination = json['destination'];
    price = json['price'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['image'] = this.image;
    data['place'] = this.place;
    data['destination'] = this.destination;
    data['price'] = this.price;
    return data;
  }
}
