import 'package:http/http.dart' as http;
import 'dart:convert';

class Hotel {
  final int id;
  final String name;
  final String address;
  final int minimalPrice;
  final String priceForIt;
  final int rating;
  final String ratingName;
  final List<String> imageUrls;
  final HotelInfo aboutTheHotel;

  Hotel({
    required this.id,
    required this.name,
    required this.address,
    required this.minimalPrice,
    required this.priceForIt,
    required this.rating,
    required this.ratingName,
    required this.imageUrls,
    required this.aboutTheHotel,
  });

  factory Hotel.fromJson(Map<String, dynamic> json) {
    return Hotel(
      id: json['id'],
      name: json['name'],
      address: json['adress'],
      minimalPrice: json['minimal_price'],
      priceForIt: json['price_for_it'],
      rating: json['rating'],
      ratingName: json['rating_name'],
      imageUrls: List<String>.from(json['image_urls']),
      aboutTheHotel: HotelInfo.fromJson(json['about_the_hotel']),
    );
  }
}

class HotelInfo {
  final String description;
  final List<String> peculiarities;

  HotelInfo({
    required this.description,
    required this.peculiarities,
  });

  factory HotelInfo.fromJson(Map<String, dynamic> json) {
    return HotelInfo(
      description: json['description'],
      peculiarities: List<String>.from(json['peculiarities']),
    );
  }
}

Future<Hotel> fetchHotel() async {
  final response = await http.get(Uri.parse(
      'https://run.mocky.io/v3/75000507-da9a-43f8-a618-df698ea7176d'));

  if (response.statusCode == 200) {
    return Hotel.fromJson(jsonDecode(response.body));
  } else {
    throw Exception('Не удалось загрузить данные отеля');
  }
}
