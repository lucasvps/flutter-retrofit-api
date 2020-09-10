import 'package:dio/dio.dart';

const JSON_HEADER = "Content-Type:application/json";

class DioConfig {
  static final DioConfig _instance = DioConfig.internal();

  factory DioConfig() => _instance;

  DioConfig.internal();

  Dio _dio;
  final String _baseUrl = "https://rickandmortyapi.com/api/";

  get dio {
    BaseOptions options = new BaseOptions(
      baseUrl: _baseUrl,
    );
    if (_dio == null) {
      _dio = new Dio(options);
    }
    _dio.options.baseUrl = _baseUrl;
    _dio.options.connectTimeout = 5000; //5s
    _dio.options.receiveTimeout = 3000;
    _dio.interceptors.add(CustomInterceptors());
    return _dio;
  }
}

class CustomInterceptors extends InterceptorsWrapper {
  @override
  Future onRequest(RequestOptions options) async {
    options.headers["Accept"] = "application/json";
    return super.onRequest(options);
  }
}
