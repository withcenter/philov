import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'users_public_data_record.g.dart';

abstract class UsersPublicDataRecord
    implements Built<UsersPublicDataRecord, UsersPublicDataRecordBuilder> {
  static Serializer<UsersPublicDataRecord> get serializer =>
      _$usersPublicDataRecordSerializer;

  String? get uid;

  DocumentReference? get userDocumentReference;

  String? get displayName;

  String? get photoUrl;

  DateTime? get registeredAt;

  DateTime? get updatedAt;

  String? get gender;

  DateTime? get birthday;

  BuiltList<DocumentReference>? get followers;

  bool? get hasPhoto;

  bool? get isProfileComplete;

  String? get coverPhotoUrl;

  BuiltList<RecentPostsStruct>? get recentPosts;

  DateTime? get lastPostCreatedAt;

  bool? get isPremiumUser;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(UsersPublicDataRecordBuilder builder) =>
      builder
        ..uid = ''
        ..displayName = ''
        ..photoUrl = ''
        ..gender = ''
        ..followers = ListBuilder()
        ..hasPhoto = false
        ..isProfileComplete = false
        ..coverPhotoUrl = ''
        ..recentPosts = ListBuilder()
        ..isPremiumUser = false;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users_public_data');

  static Stream<UsersPublicDataRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<UsersPublicDataRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then(
          (s) => serializers.deserializeWith(serializer, serializedData(s))!);

  UsersPublicDataRecord._();
  factory UsersPublicDataRecord(
          [void Function(UsersPublicDataRecordBuilder) updates]) =
      _$UsersPublicDataRecord;

  static UsersPublicDataRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createUsersPublicDataRecordData({
  String? uid,
  DocumentReference? userDocumentReference,
  String? displayName,
  String? photoUrl,
  DateTime? registeredAt,
  DateTime? updatedAt,
  String? gender,
  DateTime? birthday,
  bool? hasPhoto,
  bool? isProfileComplete,
  String? coverPhotoUrl,
  DateTime? lastPostCreatedAt,
  bool? isPremiumUser,
}) {
  final firestoreData = serializers.toFirestore(
    UsersPublicDataRecord.serializer,
    UsersPublicDataRecord(
      (u) => u
        ..uid = uid
        ..userDocumentReference = userDocumentReference
        ..displayName = displayName
        ..photoUrl = photoUrl
        ..registeredAt = registeredAt
        ..updatedAt = updatedAt
        ..gender = gender
        ..birthday = birthday
        ..followers = null
        ..hasPhoto = hasPhoto
        ..isProfileComplete = isProfileComplete
        ..coverPhotoUrl = coverPhotoUrl
        ..recentPosts = null
        ..lastPostCreatedAt = lastPostCreatedAt
        ..isPremiumUser = isPremiumUser,
    ),
  );

  return firestoreData;
}
