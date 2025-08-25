import 'package:dio/dio.dart';
import 'package:flutter_house_manager/constants/index.dart';

class RequestDio {
  final _dio = Dio();

  DioRequest() {
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
      if (context.statusCode! >= 200 && context.statusCode! < 300) {
        handler.next(context);
      } else {
        handler.reject(DioException(requestOptions: context.requestOptions));
      }
    },
        // 错误拦截器
        onError: (context, handler) {
      handler.reject(context);
    }));
  }

  get(String url, {Map<String, dynamic>? params}) {
    return _handleResponse(_dio.get(url, queryParameters: params));
  }

  post(String url, {Map<String, dynamic>? data}) {
    return _handleResponse(_dio.post(url, data: data));
  }

  put(String url, {Map<String, dynamic>? data}) {
    return _handleResponse(_dio.put(url, data: data));
  }

  delete(String url,
      {Map<String, dynamic>? data, Map<String, dynamic>? params}) {
    return _handleResponse(
        _dio.delete(url, data: data, queryParameters: params));
  }

  upload(String url) {}
  _handleResponse(Future<Response<dynamic>> task) async {
    final res = await task;
    // 业务状态码
    if (res.data["code"] == GlobalVariable.SUCCESS_CODE) {
      return res.data["data"]; // fullfiled
    }
    // 提示错误消息
    // return Promise.reject()
    throw DioException(requestOptions: res.requestOptions); // 抛出异常 rejected状态
  }
}

final requestDio = RequestDio();
