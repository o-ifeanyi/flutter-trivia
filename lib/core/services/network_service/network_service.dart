import 'package:dio/dio.dart';

abstract class NetworkService {
  Future<Response> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });

  Future<Response> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  });
}
