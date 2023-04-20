import 'dart:io';

import 'package:dio/dio.dart';

import '../api_response.dart';
import '../http_utils.dart';

// Future<ApiResponse<ApiSubjectsModel>> getData(url) async {
//   try {
//     Map<String, dynamic> map = Map();
//     map['appName'] = Global.appName;
//     dynamic response = await HttpUtils.get(url, params: map);
//     ApiSubjectsModel data = ApiSubjectsModel.fromJson(response);
//     return ApiResponse.completed(data);
//   } on DioError catch (e) {
//     return ApiResponse.error(e.error);
//   }
// }
//
// Future<ApiResponse<Object>> getUpdateData(url) async {
//   try {
//     Map<String, dynamic> map = Map();
//     dynamic response = await HttpUtils.get(url, params: map);
//     UpdataDataModel data = UpdataDataModel.fromJson(response);
//     return ApiResponse.completed(data);
//   } on DioError catch (e) {
//     return ApiResponse.error(e.error);
//   }
// }
//
// Future<ApiResponse<Object>> getVersionData(url) async {
//   try {
//     Map<String, dynamic> map = Map();
//     dynamic response = await HttpUtils.get(url, params: map);
//     VersionCKModel data = VersionCKModel.fromJson(response);
//     return ApiResponse.completed(data);
//   } on DioError catch (e) {
//     return ApiResponse.error(e.error);
//   }
// }

Future exePost(url, Map<String, dynamic> map, dynamic callback,
    {bool isOpenHeader = false}) async {
  try {
    dynamic response =
        await HttpUtils.post(url, data: map, isOpenHeader: isOpenHeader);
    var values = callback(response);
    return ApiResponse.completed(values);
  } on DioError catch (e) {
    return ApiResponse.error(e.error);
  }
}

Future exePostUpload(String url, File file, dynamic callback,
    {bool isOpenHeader = false}) async {
  try {
    dynamic response =
        await HttpUtils.postUpload(url, file, isOpenHeader: isOpenHeader);
    var values = callback(response);
    return ApiResponse.completed(values);
  } on DioError catch (e) {
    return ApiResponse.error(e.error);
  }
}

bool isRight = true;

Future exeGet(url, dynamic callback, {bool isOpenHeader = true}) async {
  try {
    Map<String, dynamic> map = {};
    dynamic response =
        await HttpUtils.get(url, params: map, isOpenHeader: isOpenHeader);

    ///TODO:token失效，请重新登录
    try {
      if ((response['code'] ?? 0) == 401 && isRight) {
        isRight = false;
        // Fluttertoast.showToast(msg: "${response['msg'] ?? ""}");
        // Navigator.pushNamedAndRemoveUntil(
        //     navigatorKey.currentState!.context, LAUNCHER, (route) => false);
      }
    } catch (e) {
      // print(e.toString());
    }

    var values = callback(response);

    return ApiResponse.completed(values);
  } on DioError catch (e) {
    return ApiResponse.error(e.error);
  }
}
