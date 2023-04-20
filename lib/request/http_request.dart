import 'dart:convert';
import 'dart:io';

import 'package:connectivity_plus/connectivity_plus.dart';
import 'package:crypto/crypto.dart';
import 'package:dio/dio.dart';
import 'package:gamebox_plugin/request/interceptor/cache.dart';

// 拦截器
import 'package:gamebox_plugin/request/interceptor/error.dart';
import 'package:gamebox_plugin/request/interceptor/request.dart';
import 'package:gamebox_plugin/request/interceptor/retry.dart';

class Http {
  static final Http _instance = Http._internal();

  factory Http() => _instance;

  static late final Dio dio;
  final CancelToken _cancelToken = CancelToken();

  Http._internal() {
    // BaseOptions、Options、RequestOptions 都可以配置参数，优先级别依次递增，且可以根据优先级别覆盖参数
    BaseOptions options = BaseOptions();

    dio = Dio(options);

    // 添加request拦截器
    dio.interceptors.add(RequestInterceptor());
    // 添加error拦截器
    dio.interceptors.add(ErrorInterceptor());
    // // 添加cache拦截器
    dio.interceptors.add(NetCacheInterceptor());
    // // 添加retry拦截器
    dio.interceptors.add(
      RetryOnConnectionChangeInterceptor(
        requestRetrier: DioConnectivityRequestRetrier(
          dio: dio,
          connectivity: Connectivity(),
        ),
      ),
    );

    // 在调试模式下需要抓包调试，所以我们使用代理，并禁用HTTPS证书校验
    // if (PROXY_ENABLE) {
    //   (dio.httpClientAdapter as DefaultHttpClientAdapter).onHttpClientCreate =
    //       (client) {
    //     client.findProxy = (uri) {
    //       return "PROXY $PROXY_IP:$PROXY_PORT";
    //     };
    //     //代理工具会提供一个抓包的自签名证书，会通不过证书校验，所以我们禁用证书校验
    //     client.badCertificateCallback =
    //         (X509Certificate cert, String host, int port) => true;
    //   };
    // }
  }

  ///初始化公共属性
  ///
  /// [baseUrl] 地址前缀
  /// [connectTimeout] 连接超时赶时间
  /// [receiveTimeout] 接收超时赶时间
  /// [interceptors] 基础拦截器
  void init({
    String? baseUrl,
    int connectTimeout = 105000,
    int receiveTimeout = 105000,
    Map<String, String>? headers,
    List<Interceptor>? interceptors,
  }) {
    dio.options = dio.options.copyWith(
      baseUrl: baseUrl,
      connectTimeout: connectTimeout,
      receiveTimeout: receiveTimeout,
      headers: headers ?? const {},
    );
    if (interceptors != null && interceptors.isNotEmpty) {
      dio.interceptors.addAll(interceptors);
    }
  }

  // 关闭dio
  void cancelRequests({required CancelToken token}) {
    _cancelToken.cancel("cancelled");
  }

  // md5 加密
  String generateMd5(String data) {
    var content = utf8.encode(data);
    var digest = md5.convert(content);

    // 这里其实就是 digest.toString()
    return digest.toString();
  }

  // 添加认证
  // 读取本地配置
  Map<String, dynamic>? getAuthorizationHeader() {
    // Map<String, dynamic>? headers;
    // String time = DateTime.now().millisecondsSinceEpoch.toString();
    // headers = {
    //   'token': generateMd5(uuid + time),
    //   'uuid': uuid,
    //   'Request-Date': time
    // };

    // 从getx或者sputils中获取
    // String accessToken = Global.accessToken;
    // String accessToken = "";
    // if (accessToken != null) {
    //   headers = {
    //     'Authorization': 'Bearer $accessToken',
    //   };
    // }
    // return headers;
    return null;
  }

  // 添加认证
  // 读取本地配置
  Map<String, dynamic>? getHeader() {
    Map<String, dynamic>? headers;

    // MyUserInfo? myUserInfo =
    //     SpUtil.getObj<MyUserInfo>(USER_INFO, (v) => MyUserInfo.fromJson(v));

    // 从getx或者sputils中获取
    // if ((myUserInfo?.refreshToken ?? "") != "") {
    //   headers = {
    //     'token': myUserInfo?.refreshToken ?? "",
    //   };
    // }
    // return headers;
    return {"1": ""};
  }

  Future get(String path,
      {Map<String, dynamic>? params,
      Options? options,
      CancelToken? cancelToken,
      bool refresh = false,
      bool noCache = !CACHE_ENABLE,
      String? cacheKey,
      bool cacheDisk = false,
      bool isOpenHeader = true}) async {
    Options requestOptions = options ?? Options();
    requestOptions = requestOptions.copyWith(
      extra: {
        "refresh": refresh,
        "noCache": noCache,
        "cacheKey": cacheKey,
        "cacheDisk": cacheDisk,
      },
    );
    Map<String, dynamic>? _authorization = getAuthorizationHeader();
    if (isOpenHeader) {
      _authorization = getHeader();
    }

    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    Response response;
    response = await dio.get(
      path,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );

    return response.data;
  }

  Future post(String path,
      {Map<String, dynamic>? params,
      data,
      Options? options,
      CancelToken? cancelToken,
      bool isOpenHeader = false}) async {
    Options requestOptions = options ?? Options();
    Map<String, dynamic>? _authorization = getAuthorizationHeader();

    if (isOpenHeader) {
      _authorization = getHeader();
    }
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.post(
      path,
      data: data,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future put(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();

    Map<String, dynamic>? _authorization = getAuthorizationHeader();
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.put(
      path,
      data: data,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future patch(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();
    Map<String, dynamic>? _authorization = getAuthorizationHeader();
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.patch(
      path,
      data: data,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future delete(
    String path, {
    data,
    Map<String, dynamic>? params,
    Options? options,
    CancelToken? cancelToken,
  }) async {
    Options requestOptions = options ?? Options();

    Map<String, dynamic>? _authorization = getAuthorizationHeader();
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.delete(
      path,
      data: data,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );
    return response.data;
  }

  Future uploadFile(
    File file,
    String url, {
    bool isOpenHeader = false,
    Options? options,
    Map<String, dynamic>? params,
    CancelToken? cancelToken,
  }) async {
    String fileName = file.path.split('/').last;
    FormData formData = FormData.fromMap({
      "upload": await MultipartFile.fromFile(file.path, filename: fileName),
    });

    Options requestOptions = options ?? Options();
    Map<String, dynamic>? _authorization = getAuthorizationHeader();

    if (isOpenHeader) {
      _authorization = getHeader();
    }
    if (_authorization != null) {
      requestOptions = requestOptions.copyWith(headers: _authorization);
    }
    var response = await dio.post(
      url,
      data: formData,
      queryParameters: params,
      options: requestOptions,
      cancelToken: cancelToken ?? _cancelToken,
    );

    return response.data;
    // return response.data['id'];
  }
}
