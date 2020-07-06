import 'package:dio/dio.dart';
import 'package:desafio_tecnico_frame_flutter/request/constants_request.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class InfraRequest{


  Future<dynamic> getPosts() async{
    http.Response response = await http.get(BASE_URL + "posts");
    return json.decode(response.body);
  }

  Future<dynamic> getAlbums() async{
    http.Response response = await http.get(BASE_URL + "albums");
    return json.decode(response.body);
  }

  Future<dynamic> getToDos() async{
    http.Response response = await http.get(BASE_URL + "todos");
    return json.decode(response.body);
  }

//  Dio _dio;
//
//  BaseOptions _options = new BaseOptions(
//    baseUrl: BASE_URL,
//    connectTimeout: 40000,
//    contentType: 'application/json',
//  );
//
//
//  init() {
//
//    if (_dio == null) {
//      _dio = Dio(this._options);
//    }
//    return null;
//  }
//
//  Future<dynamic> getRequestApi(String url, {Map headers}) async {
//    var postUri = Uri.parse(_options.baseUrl + url);
//    var request = new http.Request('GET', postUri);
//    request.headers['Content-Type'] = _options.contentType;
//
//    return request.send().then((response) async {
//      print("REQUEST [ Método -> ${response.request.method}]");
//      print("RESPONSE (${response.statusCode})");
//      if (response.statusCode < 200 || response.statusCode > 204) {
//        throw new Exception("Erro desconhecido!");
//      } else {
//        print("Success");
//        return  json.decode(response);
//      }
//    });
//  }
//


}