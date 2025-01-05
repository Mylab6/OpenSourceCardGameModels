import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'game_card.dart';

class JsonLoader {
  // Load JSON from a REST endpoint
  Future<Map<String, dynamic>> loadFromRest(String url) async {
    final response = await http.get(Uri.parse(url));
    if (response.statusCode == 200) {
      return jsonDecode(response.body) as Map<String, dynamic>;
    } else {
      throw Exception('Failed to load JSON from REST endpoint');
    }
  }

  // Load JSON from a static file
  Future<Map<String, dynamic>> loadFromFile(String filePath) async {
    final file = File(filePath);
    final contents = await file.readAsString();
    return jsonDecode(contents) as Map<String, dynamic>;
  }

  // Load card data from either a REST endpoint or a static file
  Future<List<GameCard>> loadCardData({String? url, String? filePath}) async {
    Map<String, dynamic> jsonData;
    if (url != null) {
      jsonData = await loadFromRest(url);
    } else if (filePath != null) {
      jsonData = await loadFromFile(filePath);
    } else {
      throw Exception('Either url or filePath must be provided');
    }

    // Assuming the JSON data contains a list of cards under the key 'cards'
    List<dynamic> cardsJson = jsonData['cards'];
    return cardsJson.map((cardJson) => GameCard.fromJson(cardJson)).toList();
  }
}
