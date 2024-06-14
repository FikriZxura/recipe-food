// import 'package:http/http.dart' as http;
// import 'dart:convert';
// import 'package:your_app_name/app/models/makanan.dart';

class ApiService {
  // static const String baseUrl = 'https://yourapi.com/api';

  // static Future<List<Food>> fetchFoods() async {
  //   final response = await http.get(Uri.parse('$baseUrl/foods'));
  //   if (response.statusCode == 200) {
  //     List jsonResponse = json.decode(response.body);
  //     return jsonResponse.map((food) => Food.fromJson(food)).toList();
  //   } else {
  //     throw Exception('Failed to load foods');
  //   }
  // }

  // static Future<Food> addFood(Food food) async {
  //   final response = await http.post(
  //     Uri.parse('$baseUrl/foods'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(food.toJson()),
  //   );
  //   if (response.statusCode == 201) {
  //     return Food.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to add food');
  //   }
  // }

  // static Future<Food> updateFood(Food food) async {
  //   final response = await http.put(
  //     Uri.parse('$baseUrl/foods/${food.id}'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //     body: jsonEncode(food.toJson()),
  //   );
  //   if (response.statusCode == 200) {
  //     return Food.fromJson(json.decode(response.body));
  //   } else {
  //     throw Exception('Failed to update food');
  //   }
  // }

  // static Future<bool> deleteFood(int id) async {
  //   final response = await http.delete(
  //     Uri.parse('$baseUrl/foods/$id'),
  //     headers: <String, String>{
  //       'Content-Type': 'application/json; charset=UTF-8',
  //     },
  //   );
  //   return response.statusCode == 200;
  // }
}
