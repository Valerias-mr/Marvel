import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:todo/models/personaje.dart';

//CONEXION API
//funcion que realiza la solicitud http a la url
Future<List<Personaje>> getMarvelCharacters() async {
  final publicKey = '980751961399d17add954c03025a134a';
  final privateKey = '76f21272c5d84e5a3eb5acd6a0f7f460a5d9af6f';
  final timeStamp = "1111";
  final hash = "d9ff0a24225b012a3e5a809e4ee1070f";

  final url =
      'https://gateway.marvel.com:443/v1/public/characters?ts=$timeStamp&apikey=$publicKey&hash=$hash&limit=15&offset=700';
  final response = await http.get(Uri.parse(url));

  //el codigo 200 indica que se completó con exito y se decodifica respuesta
  if (response.statusCode == 200) {
    final responseBody = jsonDecode(response.body);
    final charactersJson = responseBody['data']['results'];
    //Se convierte cada elemnto en una instancia
  final personajes = List<Personaje>.from(charactersJson.map((json) => Personaje.fromJson(json)));
    return personajes;
  } else {
    throw Exception('Failed to load characters');
  }
}
