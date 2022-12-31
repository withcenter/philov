// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fireflow/fireflow.dart';

Future onChatMessageSubmit(
  UsersPublicDataRecord? otherUserPublicDataDocument,
  ChatRoomsRecord? chatRoomDocument,
  String? text,
  String? imagePath,
) async {
  // Add your function code here!

  // Note, don't wait for the message to be sent. So, it will perform faster.
  return ChatService.instance.sendMessage(
    otherUserPublicDataDocumentReference:
        otherUserPublicDataDocument?.reference,
    chatRoomDocumentReference: chatRoomDocument?.reference,
    text: text,
    imagePath: imagePath,
  );
}
