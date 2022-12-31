// Automatic FlutterFlow imports
import '../../backend/backend.dart';
import '../../flutter_flow/flutter_flow_theme.dart';
import '../../flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom widgets
import '../actions/index.dart'; // Imports custom actions
import 'package:flutter/material.dart';
// Begin custom widget code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

import 'package:fireflow/fireflow.dart';
import 'package:philov/components/chat_my_message_widget.dart';
import 'package:philov/components/chat_other_user_message_widget.dart';
import 'package:philov/components/chat_room_empty_widget.dart';

class ChatRoomMessages extends StatefulWidget {
  const ChatRoomMessages({
    Key? key,
    this.width,
    this.height,
    this.otherUserPublicDataDocument,
    this.chatRoomDocument,
  }) : super(key: key);

  final double? width;
  final double? height;
  final UsersPublicDataRecord? otherUserPublicDataDocument;
  final ChatRoomsRecord? chatRoomDocument;

  @override
  _ChatRoomMessagesState createState() => _ChatRoomMessagesState();
}

class _ChatRoomMessagesState extends State<ChatRoomMessages> {
  @override
  Widget build(BuildContext context) {
    return ChatRoomMessageList(
      otherUserPublicDataDocument:
          widget.otherUserPublicDataDocument?.reference,
      chatRoomDocumentReference: widget.chatRoomDocument?.reference,
      onMyMessage: (message) => ChatMyMessageWidget(
        chatRoomMessageDocument: ChatRoomMessagesRecord.getDocumentFromData(
          message.data,
          message.ref,
        ),
      ),
      onOtherMessage: (message) => ChatOtherUserMessageWidget(
        chatRoomDocument: widget.chatRoomDocument,
        chatRoomMessageDocument: ChatRoomMessagesRecord.getDocumentFromData(
          message.data,
          message.ref,
        ),
      ),
      onEmpty: ChatRoomEmptyWidget(),
    );
  }
}
