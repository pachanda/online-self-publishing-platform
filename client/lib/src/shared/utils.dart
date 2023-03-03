import 'dart:convert';
import 'dart:io';

import 'package:client/src/shared/scaffold_messanger.dart';
import 'package:device_info_plus/device_info_plus.dart';
import 'package:firebase_storage/firebase_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:image_picker/image_picker.dart';
import 'package:permission_handler/permission_handler.dart';

import '../common/log.dart';

class Utils {
  static Future<String?> pickImage() async {
    String? path;
    bool? storageStatus;
    bool? photosStatus;

    if (Platform.isAndroid) {
      final androidInfo = await DeviceInfoPlugin().androidInfo;
      if (androidInfo.version.sdkInt <= 32) {
        storageStatus = await Permission.storage.request().isGranted;
      } else {
        photosStatus = await Permission.photos.request().isGranted;
      }
    }

    if ((storageStatus ?? false) || (photosStatus ?? false)) {
      final image = await ImagePicker().pickImage(source: ImageSource.gallery);
      if (image == null) return null;

      final file = File(image.path);
      printInfo(file.uri);
      printInfo(file.path);
      path = file.path;
    }
    return path;
  }

  static Future<String> saveToFirebase(String where, File what) async {
    var snapshot = await FirebaseStorage.instance
      .ref(where)
      .putFile(what);
    return await snapshot.ref.getDownloadURL();
  }

  static String prettyJson(jsonObject){
    const encoder = JsonEncoder.withIndent("  ");
    return encoder.convert(jsonObject);
  }

  static void showMessage(Ref ref, String message) {
    ref.watch(scaffoldMessangerStateProvider).showMessage(message);
  }

  static void showMessagew(WidgetRef ref, String message) {
    ref.watch(scaffoldMessangerStateProvider).showMessage(message);
  }
}