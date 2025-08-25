import 'package:dio/dio.dart';
import 'package:flutter_house_manager/constants/index.dart';

class RequestDio {
  final _dio = Dio();

DioRequest(){
   _dio
    ..options.baseUrl = GlobalVariable.BASE_URL
    ..options.connectTimeout = 
    const Duration(seconds: GlobalVariable.NEW_WORK_TIME_OUT)
    ..options.receiveTimeout = 
    const Duration(seconds: GlobalVariable.NEW_WORK_TIME_OUT)
    ..options.sendTimeout = 
    const Duration(seconds: GlobalVariable.NEW_WORK_TIME_OUT);
   

    _dio.interceptors.add(InterceptorsWrapper(onRequest: (context, handler) {
      // 请求拦截器
      // 注入token

      handler.next(context);
    }, onResponse: (context, handler) {
      // 响应拦截器
      handler.next(context);
    },
        // 错误拦截器
        onError: (context, handler) {
      handler.reject(context);
    }));
}

  get(String url, {Map<String, dynamic>? params}) {
    return _dio.get(url, queryParameters: params);
  }

  post(String url, {Map<String, dynamic>? data}) {
    return _dio.post(url, data: data);
  }

  put(String url, {Map<String, dynamic>? data}) {
    return _dio.put(url, data: data);
  }

  delete(String url,
      {Map<String, dynamic>? data, Map<String, dynamic>? params}) {
        return _dio.delete(url, data: data, queryParameters: params);
      }

  upload(String url) {}
}

final requestDio = RequestDio();
