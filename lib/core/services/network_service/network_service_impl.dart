import 'package:ai_trivia/app/data/model/result.dart';
import 'package:ai_trivia/core/services/network_service/network_service.dart';
import 'package:dio/dio.dart';

final class NetworkServiceImpl implements NetworkService {
  final Dio dio;

  NetworkServiceImpl({required this.dio});

  @override
  Future<Response> get(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio
        .get(
          path,
          data: data,
          queryParameters: queryParameters,
        )
        .onError<DioException>(
          (error, stackTrace) => throw CustomError.message(
              error.response?.statusMessage ?? 'An error occured'),
        );
  }

  @override
  Future<Response> post(
    String path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
  }) async {
    return await dio
        .post(
          path,
          data: data,
          queryParameters: queryParameters,
        )
        .onError<DioException>(
          (error, stackTrace) => throw CustomError.message(
              error.response?.statusMessage ?? 'An error occured'),
        );
  }
}
