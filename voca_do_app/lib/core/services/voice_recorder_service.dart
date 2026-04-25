
import 'dart:io';

import 'package:flutter_sound/flutter_sound.dart';
import 'package:injectable/injectable.dart';
import 'package:path_provider/path_provider.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:uuid/v7.dart';
import 'package:voca_do_app/core/errors/failure.dart';

@lazySingleton
class VoiceService {
  final FlutterSoundRecorder _recorder = FlutterSoundRecorder();

  bool _isRecorderReady = false;
  String? _currentPath;

  Future<void> init() async {
    if (_isRecorderReady) return;

    await _recorder.openRecorder();
    _isRecorderReady = true;
  }


  Future<void> requestPermission() async {
    final status = await Permission.microphone.request();
    if (!status.isGranted) {
      throw PermissionFailure("Mic permission denied");
    }
  }


  Future<void> startRecord() async {
    await init();
    await requestPermission();

    final Directory tempDir = await getTemporaryDirectory();
    final name = UuidV7().generate();

    _currentPath = '${tempDir.path}/$name.m4a';

    await _recorder.startRecorder(
      toFile: _currentPath,
      codec: Codec.aacMP4,
      sampleRate: 44100,
      bitRate: 128000,
    );
  }


  Future<String?> stopRecord() async {
    if (!_isRecorderReady) return null;

    final path = await _recorder.stopRecorder();
    return path ?? _currentPath;
  }


  Future<void> dispose() async {
    if (_isRecorderReady) {
      await _recorder.closeRecorder();
      _isRecorderReady = false;
    }
  }
}

// import 'dart:io';

// import 'package:injectable/injectable.dart';
// import 'package:path_provider/path_provider.dart';
// import 'package:record/record.dart';
// import 'package:uuid/v7.dart';
// import 'package:voca_do_app/core/errors/failure.dart';

// @lazySingleton
// class VoiceService {
//   final _record = AudioRecorder();
 

//   void requestPermission() async {
//     final hasPermission = await _record.hasPermission(request: true);
//     if (!hasPermission) {
//       throw PermissionFailure("record not allow");
//     }
//   }



//   //----
// Future<void> startRecord() async {
//   final hasPermission = await _record.hasPermission();

//   if (!hasPermission) {
//     throw PermissionFailure("Mic permission denied");
//   }

//   final Directory tempDir = await getTemporaryDirectory();
//   final name = UuidV7().generate();
//   await _record.start(
//     const RecordConfig(
//       encoder: AudioEncoder.aacLc,
//       sampleRate: 44100,
//       bitRate: 128000,
//     ),
//     path: '${tempDir.path}/$name.m4a',
//   );
// }


//   Future<String?> stopRecord() async {
//     final path = await _record.stop();
//     return path;
//   }


// }
