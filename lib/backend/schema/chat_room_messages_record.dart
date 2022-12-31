import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_room_messages_record.g.dart';

abstract class ChatRoomMessagesRecord
    implements Built<ChatRoomMessagesRecord, ChatRoomMessagesRecordBuilder> {
  static Serializer<ChatRoomMessagesRecord> get serializer =>
      _$chatRoomMessagesRecordSerializer;

  DocumentReference? get userDocumentReference;

  DocumentReference? get chatRoomDocumentReference;

  String? get text;

  String? get photoUrl;

  DateTime? get sentAt;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatRoomMessagesRecordBuilder builder) =>
      builder
        ..text = ''
        ..photoUrl = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_room_messages');

  static Stream<ChatRoomMessagesRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatRoomMessagesRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatRoomMessagesRecord._();
  factory ChatRoomMessagesRecord(
          [void Function(ChatRoomMessagesRecordBuilder) updates]) =
      _$ChatRoomMessagesRecord;

  static ChatRoomMessagesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatRoomMessagesRecordData({
  DocumentReference? userDocumentReference,
  DocumentReference? chatRoomDocumentReference,
  String? text,
  String? photoUrl,
  DateTime? sentAt,
}) {
  final firestoreData = serializers.toFirestore(
    ChatRoomMessagesRecord.serializer,
    ChatRoomMessagesRecord(
      (c) => c
        ..userDocumentReference = userDocumentReference
        ..chatRoomDocumentReference = chatRoomDocumentReference
        ..text = text
        ..photoUrl = photoUrl
        ..sentAt = sentAt,
    ),
  );

  return firestoreData;
}
