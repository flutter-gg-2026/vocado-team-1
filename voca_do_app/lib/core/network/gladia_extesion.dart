import 'dart:io';

import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:voca_do_app/core/network/api_endpoints.dart';
import 'package:voca_do_app/core/network/dio_client.dart';

extension GladiaExtesion on DioClient {
  // dealing with different end point  , upload , transcript ,result
  // like a request have a body and header

  // upload the file
  // transformthe file the upode it in method post with the requierd parameters
  Future<String> voiceUploadMethod({required File file}) async {
    FormData formData = FormData.fromMap({
      "audio": await MultipartFile.fromFile(file.path),
    });
    final response = await dio.post(
      ApiEndpoints.uploadAudio,
      data: formData,
      options: Options(headers: {'Content-Type': "multipart/form-data"}),
    );
    return response.data['audio_url'];
  }
  

  //
  Future<String> voiceTranscriptMethod({required String url}) async {
    final response = await dio.post(
      ApiEndpoints.transcriptionAudio,
      data: {'audio_url': url},
    );
    return response.data['id'];
  }



  Future<Map<String, dynamic>> getInformation({
    required String idVoiceTranscript,
  }) async {
    late Response response;
    do {
      response = await dio.get(
        "${ApiEndpoints.transcriptionAudio}/$idVoiceTranscript",
      );
      await Future.delayed(Duration(seconds: 2));
    } while (response.data['status'] != 'done');
    return response.data['result'];
  }
}
