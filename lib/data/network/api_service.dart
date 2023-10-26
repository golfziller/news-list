import 'package:dio/dio.dart';
import 'package:flutter/foundation.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

// final dio = Dio();
class NetworkService {
  // final Dio dio;
  final dio = Dio();
  NetworkService() {
    dio.options.baseUrl = 'https://newsapi.org/v2/';
    _initInterceptors();
  }

  _initInterceptors() {
    dio.interceptors.add(_interceptorsRequestWrapper());
    dio.interceptors.add(_interceptorsErrorWrapper());
    if (kDebugMode) {
      dio.interceptors.add(
        PrettyDioLogger(
          requestHeader: true,
          requestBody: false, // true,
          responseBody: false, // true,
          responseHeader: false, //true,
          error: true,
          compact: true,
          maxWidth: 90,
        ),
      );
    }
  }

  InterceptorsWrapper _interceptorsRequestWrapper() => InterceptorsWrapper(
        onRequest: (options, handler) async {
          options.headers['Content-Type'] = 'application/json';
          options.headers['Accept'] = 'application/json';
          options.headers['Accept-Language'] = 'en';

          return handler.next(options);
        },
      );

  QueuedInterceptorsWrapper _interceptorsErrorWrapper() =>
      QueuedInterceptorsWrapper(
        onError: (e, handler) async {
          var response = e.response ?? e;
          return handler.next(e);
        },
      );

  Future<Response> get(String url, {Map<String, dynamic>? query}) async {
    try {
      final r = await dio.get(url, queryParameters: {
        ...query ?? {},
        'apiKey': '7d635b11b2094bec87104c167922ea1e'
      });
      return r;
    } on DioException catch (e) {
      throw Exception(e);
    } on Exception catch (e) {
      throw Exception('Something went wrong');
    }
  }
}
