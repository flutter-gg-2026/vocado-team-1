import 'dart:io';

import 'package:dio/dio.dart';
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
      data: {
        'audio_url': url,
        'detect_language': true,
        'language_config': {
          'languages': ['ar', 'en'],
        },
      },
    );
    return response.data['id'];
  }

  Future<String> getInformation({required String idVoiceTranscript}) async {
    late Response response;

    do {
      response = await dio.get(
        "${ApiEndpoints.transcriptionAudio}/$idVoiceTranscript",
      );

      /// debugPrint("Gladia status: ${response.data['status']}");
      //  debugPrint("Gladia full response: ${response.data}");
      //  debugPrint("Gladia status: ${response.data['status']}");

      await Future.delayed(Duration(seconds: 2));
    } while (response.data['status'] != 'done');

    final transcript =
        response.data['result']?['transcription']?['full_transcript'];
    /*
  debugPrint("FINAL TRANSCRIPT: $transcript", wrapWidth: 1024);

  if (transcript == null || transcript.toString().trim().isEmpty) {
    throw Exception("the sound not clear at all ");
  }*/

    return transcript.toString();
  }
}
