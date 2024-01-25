import 'dart:convert';

import 'package:quran_app/model/aya_of_the_day.dart';
import 'package:http/http.dart' as http;

class ApiServices {
  Future<AyaOfTheDay> getAyaOfTheDay() async {
    String url =
        "https://api.alquran.cloud/v1/ayah/262/editions/quran-uthmani,en.asad,en.pickthall";
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return AyaOfTheDay.fromJSON(json.decode(response.body));
    } else {
      print("Failed to Load");
      throw Exception("Failed to Load Post");
    }
  }
}
