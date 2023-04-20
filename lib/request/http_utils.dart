import 'dart:io';

import 'package:dio/dio.dart';
import 'package:gamebox_plugin/request/http_request.dart';
import 'package:gamebox_plugin/request/interceptor/cache.dart';

class HttpUtils {
  static void init({
    required String baseUrl,
    int connectTimeout = 105000,
    int receiveTimeout = 105000,
    List<Interceptor>? interceptors,
  }) {
    Http().init(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      interceptors: interceptors,
    );
  }

  static void cancelRequests({required CancelToken token}) {
    Http().cancelRequests(token: token);
  }

  static Future get(String path,
      {Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken,
      bool refresh = false,
      bool noCache = !CACHE_ENABLE,
      String? cacheKey,
      bool cacheDisk = false,
      bool isOpenHeader = true}) async {
    return await Http().get(path,
        params: params,
        options: options,
        cancelToken: cancelToken,
        refresh: refresh,
        noCache: noCache,
        cacheKey: cacheKey,
        isOpenHeader: isOpenHeader);
  }

  static Future post(String path,
      {data,
      Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken,
      bool isOpenHeader = false}) async {
    return await Http().post(path,
        data: data,
        params: params,
        options: options,
        cancelToken: cancelToken,
        isOpenHeader: isOpenHeader);
  }

  static Future put(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await Http().put(
      path,
      data: data,
      params: params,
      options: options,
      cancelToken: cancelToken,
    );
  }

  static Future patch(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await Http().patch(
      path,
      data: data,
      params: params,
      options: options,
      cancelToken: cancelToken,
    );
  }

  static Future delete(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    return await Http().delete(
      path,
      data: data,
      params: params,
      options: options,
      cancelToken: cancelToken,
    );
  }

  static Future postUpload(String url, File file,
      {
      // data,
      Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken,
      bool isOpenHeader = false}) async {
    return await Http().uploadFile(file, url,
        // data: data,
        // params: params,
        // options: options,
        // cancelToken: cancelToken,
        isOpenHeader: isOpenHeader);
  }
}
