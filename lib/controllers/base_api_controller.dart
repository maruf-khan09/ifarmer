import 'package:dio/dio.dart';
import 'package:get/get.dart';
import 'package:ifarmer/controllers/interceptor.dart';
import 'package:ifarmer/utils/constant_strings.dart';

class BaseApiController extends GetxController with StateMixin<dynamic> {
  // String baseUrl = 'http://api.shopoth.shop/';

  static const String _contentType = 'Content-Type';

  String baseUrl =
      debugMood ? 'http://api-v2.shopoth.shop/' : 'https://api.shopoth.com/';

  String webUrl = debugMood ? 'http://shopoth.net/' : 'https://shopoth.com/';

  Dio? _dio = Dio();

  BaseApiController() {
    BaseOptions dioOptions = BaseOptions(
      baseUrl: baseUrl,
      connectTimeout: 60000,
      receiveTimeout: 80000,
      headers: {_contentType: 'application/json'},
    );

    _dio = Dio(dioOptions)
      ..interceptors.add(LoggingInterceptors(
        dio: getDio()!,
      ));
  }

  Dio? getDio() => _dio;

  String handleError(DioError error) {
    String errorDescription = "";

    switch (error.type) {
      case DioErrorType.cancel:
        errorDescription = "Request to API server was cancelled";
        break;
      case DioErrorType.connectTimeout:
        errorDescription = "Connection timeout with API server";
        break;
      case DioErrorType.other:
        errorDescription =
            "Connection to API server failed due to internet connection";
        break;
      case DioErrorType.receiveTimeout:
        errorDescription = "Receive timeout in connection with API server";
        break;
      case DioErrorType.response:
        errorDescription =
            "Received status code: ${error.response!.statusCode}";
        break;
      case DioErrorType.sendTimeout:
        errorDescription = "Send timeout in connection with API server";
        break;
    }
    return errorDescription;
  }
}
