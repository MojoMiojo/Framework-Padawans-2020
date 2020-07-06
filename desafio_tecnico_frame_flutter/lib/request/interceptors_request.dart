import 'package:dio/dio.dart';

class InterceptorsRequest{

  @override
  onRequest(RequestOptions options){

    print("REQUEST[ ${options.method} => PATH: ${options.path} ]");

    return options;
  }

  @override
  onResponse(Response response){

    print("RESPONSE[ ${response.statusCode} => PATH: ${response.request.path} ]");

    return response;
  }

  @override
  onError(DioError error){

    print("ERROR[ ${error.response.statusCode} => PATH: ${error.request.path} ]");

    return error;
  }

}