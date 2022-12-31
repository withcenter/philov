// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fireflow/fireflow.dart';

Future afterCoverPhotoUpload(String? imagePath) async {
  // Add your function code here!
  return UserService.instance.afterCoverPhotoUpload(imagePath);
}
