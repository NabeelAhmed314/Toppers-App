import 'dart:convert';

import 'package:toppers_pakistan/models/_model.dart';

import 'package:http/http.dart' as http;

abstract class Service<T extends Model> {
  final apiUrl = "http://nabeel-pc:8000/api";

  String get route;

  Future<List<T>> fetchAll() async {
    var response = await http.get(Uri.encodeFull("$apiUrl/$route"),
        headers: {"Accept": "application/json"});
    var data = jsonDecode(response.body) as List;

    return data.map((item) => parse(item)).toList();
  }

  Future<List<T>> fetchAllById(id) async {
    var response = await http.get(Uri.encodeFull("$apiUrl/$route/$id"),
        headers: {"Accept": "application/json"});

    var data = jsonDecode(response.body) as List;

    return data.map((item) => parse(item)).toList();
  }

  T parse(Map<String, dynamic> json);
}
