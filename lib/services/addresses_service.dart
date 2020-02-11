import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:toppers_pakistan/models/address_model.dart';
import 'package:toppers_pakistan/models/local-data.dart';
import 'package:toppers_pakistan/services/_services.dart';

class AddressService extends Service<AddressModel> {
  @override
  AddressModel parse(Map<String, dynamic> json) {
    return AddressModel.fromJson(json);
  }

  Future<AddressModel> insert(AddressModel addressModel) async {
    // print("Model=> " +addressModel.toString());
    var jsonData = jsonEncode(addressModel);
    var response = await http.post(Uri.encodeFull("$apiUrl/$route"),
    body: jsonData, headers: {"Content-Type": "application/json","Accept": "application/json"});
    try{
      var data = jsonDecode(response.body);
      return parse(data);
    }catch(e){
      return null;
    }
  }

  String get route => "address";
}


