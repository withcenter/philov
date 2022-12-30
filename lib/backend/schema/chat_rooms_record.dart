import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'chat_rooms_record.g.dart';

abstract class ChatRoomsRecord
    implements Built<ChatRoomsRecord, ChatRoomsRecordBuilder> {
  static Serializer<ChatRoomsRecord> get serializer =>
      _$chatRoomsRecordSerializer;

  BuiltList<DocumentReference>? get userDocumentReferences;

  String? get lastMessage;

  DateTime? get lastMessageSentAt;

  BuiltList<DocumentReference>? get lastMessageSeenBy;

  DocumentReference? get lastMessageSentBy;

  String? get title;

  DocumentReference? get moderatorUserDocumentReference;

  BuiltList<DocumentReference>? get unsubscribedUserDocumentReferences;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(ChatRoomsRecordBuilder builder) => builder
    ..userDocumentReferences = ListBuilder()
    ..lastMessage = ''
    ..lastMessageSeenBy = ListBuilder()
    ..title = ''
    ..unsubscribedUserDocumentReferences = ListBuilder();

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('chat_rooms');

  static Stream<ChatRoomsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<ChatRoomsRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  ChatRoomsRecord._();
  factory ChatRoomsRecord([void Function(ChatRoomsRecordBuilder) updates]) =
      _$ChatRoomsRecord;

  static ChatRoomsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createChatRoomsRecordData({
  String? lastMessage,
  DateTime? lastMessageSentAt,
  DocumentReference? lastMessageSentBy,
  String? title,
  DocumentReference? moderatorUserDocumentReference,
}) {
  final firestoreData = serializers.toFirestore(
    ChatRoomsRecord.serializer,
    ChatRoomsRecord(
      (c) => c
        ..userDocumentReferences = null
        ..lastMessage = lastMessage
        ..lastMessageSentAt = lastMessageSentAt
        ..lastMessageSeenBy = null
        ..lastMessageSentBy = lastMessageSentBy
        ..title = title
        ..moderatorUserDocumentReference = moderatorUserDocumentReference
        ..unsubscribedUserDocumentReferences = null,
    ),
  );

  return firestoreData;
}
