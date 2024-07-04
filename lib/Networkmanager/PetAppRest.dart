// ignore_for_file: avoid_print

import 'dart:convert';
import 'package:http/http.dart' as http;


class Petapprest<T> {

  final String baseUrl;
  Petapprest(this.baseUrl);

  Future<T?> get(String endpoint, T Function(dynamic) fromJson, Function(int) setStatusCode) async {
    var url = Uri.parse('$baseUrl$endpoint');
    var response = await http.get(url);
    setStatusCode(response.statusCode);
    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<T?> getListOfObjects(String endpoint, T Function(List<dynamic>) fromJson) async {
    var url = Uri.parse('$baseUrl$endpoint');
    var response = await http.get(url);
   
    if (response.statusCode == 200 || response.statusCode == 201) {
      var data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<T?> post(String endpoint, Map<String, dynamic> body, T Function(dynamic) fromJson, Authentication? auth, Function(int) setStatusCode) async {
    var basicAuth = auth != null ? 'Basic ${base64Encode(utf8.encode('rzp_test_4wZO5YRyjtACT2:nvGyVuemI5s643oUVGyzpsex'))}' : '' ;
    var url = Uri.parse('$baseUrl$endpoint');
    var headers =
    auth != null ? {'Content-Type': 'application/json','Authorization': basicAuth} : {'Content-Type': 'application/json', 'accept': 'application/json'};
    var jsonBody = jsonEncode(body);
    var response =  await http.post(url, body: jsonBody,headers: headers);
    if (response.statusCode == 200 || response.statusCode == 400 || response.statusCode == 404 || response.statusCode == 201) {
      print('i got razor pay response body ${response.body}');
      var data = jsonDecode(response.body);
      setStatusCode(response.statusCode);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<T?> put(String endpoint, Map<String, dynamic> body, T Function(dynamic) fromJson, Authentication? auth) async {
    var basicAuth = auth != null ? 'Basic ${base64Encode(utf8.encode('rzp_test_4wZO5YRyjtACT2:nvGyVuemI5s643oUVGyzpsex'))}' : '' ;
    var url = Uri.parse('$baseUrl$endpoint');
    var headers =
    auth != null ? {'Content-Type': 'application/json','Authorization': basicAuth} : {'Content-Type': 'application/json', 'accept': 'application/json'};
    var jsonBody = jsonEncode(body);
    var response =  await http.put(url, body: jsonBody,headers: headers);
    if (response.statusCode == 201) {
      var data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  Future<T?> postListOfObjects(String endpoint, Map<String, dynamic> body, T Function(List<dynamic>) fromJson, Authentication? auth) async {
    var basicAuth = auth != null ? 'Basic ${base64Encode(utf8.encode('rzp_test_4wZO5YRyjtACT2:nvGyVuemI5s643oUVGyzpsex'))}' : '' ;
    var url = Uri.parse('$baseUrl$endpoint');
    var headers =
    auth != null ? {'Content-Type': 'application/json','Authorization': basicAuth} : {'Content-Type': 'application/json', 'accept': 'application/json'};
    var jsonBody = jsonEncode(body);
    var response =  await http.post(url, body: jsonBody,headers: headers);
    if (response.statusCode == 200) {
      var data = jsonDecode(response.body);
      return fromJson(data);
    } else {
      print('Request failed with status: ${response.statusCode}.');
      return null;
    }
  }

  // Future<FileUploadModel> postProfilePicToserver(String imagePath,String endpoint,String fileName) async {
  //   var request = http.MultipartRequest(
  //       'POST',
  //       Uri.parse(
  //           '$baseUrl$endpoint'));
  //   request.fields.addAll({'path':
  //    'user', 'filename': fileName});
  //   request.files.add(await http.MultipartFile.fromPath('file', imagePath));
  //   http.StreamedResponse response = await request.send();
  //   if (response.statusCode == 200) {
  //      final result = await response.stream.bytesToString();
  //       Map<String, dynamic> data = jsonDecode(result);
  //      FileUploadModel fileModel = FileUploadModel.fromJson(data);
  //     return fileModel;
  //   } else {
  //     print(response.reasonPhrase);
  //     return FileUploadModel();
  //   }
  // }
}

enum Authentication {
   basicAuth;
}
