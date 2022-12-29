// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'users_public_data_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<UsersPublicDataRecord> _$usersPublicDataRecordSerializer =
    new _$UsersPublicDataRecordSerializer();

class _$UsersPublicDataRecordSerializer
    implements StructuredSerializer<UsersPublicDataRecord> {
  @override
  final Iterable<Type> types = const [
    UsersPublicDataRecord,
    _$UsersPublicDataRecord
  ];
  @override
  final String wireName = 'UsersPublicDataRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, UsersPublicDataRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userDocumentReference;
    if (value != null) {
      result
        ..add('userDocumentReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('displayName')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.registeredAt;
    if (value != null) {
      result
        ..add('registeredAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.updatedAt;
    if (value != null) {
      result
        ..add('updatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.gender;
    if (value != null) {
      result
        ..add('gender')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.birthday;
    if (value != null) {
      result
        ..add('birthday')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.followers;
    if (value != null) {
      result
        ..add('followers')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.hasPhoto;
    if (value != null) {
      result
        ..add('hasPhoto')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.isProfileComplete;
    if (value != null) {
      result
        ..add('isProfileComplete')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.coverPhotoUrl;
    if (value != null) {
      result
        ..add('coverPhotoUrl')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.recentPosts;
    if (value != null) {
      result
        ..add('recentPosts')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                BuiltList, const [const FullType(RecentPostsStruct)])));
    }
    value = object.lastPostCreatedAt;
    if (value != null) {
      result
        ..add('lastPostCreatedAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.isPremiumUser;
    if (value != null) {
      result
        ..add('isPremiumUser')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  UsersPublicDataRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new UsersPublicDataRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userDocumentReference':
          result.userDocumentReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'displayName':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'registeredAt':
          result.registeredAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'gender':
          result.gender = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'birthday':
          result.birthday = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'followers':
          result.followers.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'hasPhoto':
          result.hasPhoto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'isProfileComplete':
          result.isProfileComplete = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'coverPhotoUrl':
          result.coverPhotoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'recentPosts':
          result.recentPosts.replace(serializers.deserialize(value,
                  specifiedType: const FullType(
                      BuiltList, const [const FullType(RecentPostsStruct)]))!
              as BuiltList<Object?>);
          break;
        case 'lastPostCreatedAt':
          result.lastPostCreatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'isPremiumUser':
          result.isPremiumUser = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$UsersPublicDataRecord extends UsersPublicDataRecord {
  @override
  final String? uid;
  @override
  final DocumentReference<Object?>? userDocumentReference;
  @override
  final String? displayName;
  @override
  final String? photoUrl;
  @override
  final DateTime? registeredAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? gender;
  @override
  final DateTime? birthday;
  @override
  final BuiltList<DocumentReference<Object?>>? followers;
  @override
  final bool? hasPhoto;
  @override
  final bool? isProfileComplete;
  @override
  final String? coverPhotoUrl;
  @override
  final BuiltList<RecentPostsStruct>? recentPosts;
  @override
  final DateTime? lastPostCreatedAt;
  @override
  final DateTime? isPremiumUser;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$UsersPublicDataRecord(
          [void Function(UsersPublicDataRecordBuilder)? updates]) =>
      (new UsersPublicDataRecordBuilder()..update(updates))._build();

  _$UsersPublicDataRecord._(
      {this.uid,
      this.userDocumentReference,
      this.displayName,
      this.photoUrl,
      this.registeredAt,
      this.updatedAt,
      this.gender,
      this.birthday,
      this.followers,
      this.hasPhoto,
      this.isProfileComplete,
      this.coverPhotoUrl,
      this.recentPosts,
      this.lastPostCreatedAt,
      this.isPremiumUser,
      this.ffRef})
      : super._();

  @override
  UsersPublicDataRecord rebuild(
          void Function(UsersPublicDataRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  UsersPublicDataRecordBuilder toBuilder() =>
      new UsersPublicDataRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is UsersPublicDataRecord &&
        uid == other.uid &&
        userDocumentReference == other.userDocumentReference &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        registeredAt == other.registeredAt &&
        updatedAt == other.updatedAt &&
        gender == other.gender &&
        birthday == other.birthday &&
        followers == other.followers &&
        hasPhoto == other.hasPhoto &&
        isProfileComplete == other.isProfileComplete &&
        coverPhotoUrl == other.coverPhotoUrl &&
        recentPosts == other.recentPosts &&
        lastPostCreatedAt == other.lastPostCreatedAt &&
        isPremiumUser == other.isPremiumUser &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc(
                        $jc(
                            $jc(
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc(
                                                        $jc(
                                                            $jc(
                                                                $jc(
                                                                    0,
                                                                    uid
                                                                        .hashCode),
                                                                userDocumentReference
                                                                    .hashCode),
                                                            displayName
                                                                .hashCode),
                                                        photoUrl.hashCode),
                                                    registeredAt.hashCode),
                                                updatedAt.hashCode),
                                            gender.hashCode),
                                        birthday.hashCode),
                                    followers.hashCode),
                                hasPhoto.hashCode),
                            isProfileComplete.hashCode),
                        coverPhotoUrl.hashCode),
                    recentPosts.hashCode),
                lastPostCreatedAt.hashCode),
            isPremiumUser.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'UsersPublicDataRecord')
          ..add('uid', uid)
          ..add('userDocumentReference', userDocumentReference)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('registeredAt', registeredAt)
          ..add('updatedAt', updatedAt)
          ..add('gender', gender)
          ..add('birthday', birthday)
          ..add('followers', followers)
          ..add('hasPhoto', hasPhoto)
          ..add('isProfileComplete', isProfileComplete)
          ..add('coverPhotoUrl', coverPhotoUrl)
          ..add('recentPosts', recentPosts)
          ..add('lastPostCreatedAt', lastPostCreatedAt)
          ..add('isPremiumUser', isPremiumUser)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class UsersPublicDataRecordBuilder
    implements Builder<UsersPublicDataRecord, UsersPublicDataRecordBuilder> {
  _$UsersPublicDataRecord? _$v;

  String? _uid;
  String? get uid => _$this._uid;
  set uid(String? uid) => _$this._uid = uid;

  DocumentReference<Object?>? _userDocumentReference;
  DocumentReference<Object?>? get userDocumentReference =>
      _$this._userDocumentReference;
  set userDocumentReference(
          DocumentReference<Object?>? userDocumentReference) =>
      _$this._userDocumentReference = userDocumentReference;

  String? _displayName;
  String? get displayName => _$this._displayName;
  set displayName(String? displayName) => _$this._displayName = displayName;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _registeredAt;
  DateTime? get registeredAt => _$this._registeredAt;
  set registeredAt(DateTime? registeredAt) =>
      _$this._registeredAt = registeredAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _gender;
  String? get gender => _$this._gender;
  set gender(String? gender) => _$this._gender = gender;

  DateTime? _birthday;
  DateTime? get birthday => _$this._birthday;
  set birthday(DateTime? birthday) => _$this._birthday = birthday;

  ListBuilder<DocumentReference<Object?>>? _followers;
  ListBuilder<DocumentReference<Object?>> get followers =>
      _$this._followers ??= new ListBuilder<DocumentReference<Object?>>();
  set followers(ListBuilder<DocumentReference<Object?>>? followers) =>
      _$this._followers = followers;

  bool? _hasPhoto;
  bool? get hasPhoto => _$this._hasPhoto;
  set hasPhoto(bool? hasPhoto) => _$this._hasPhoto = hasPhoto;

  bool? _isProfileComplete;
  bool? get isProfileComplete => _$this._isProfileComplete;
  set isProfileComplete(bool? isProfileComplete) =>
      _$this._isProfileComplete = isProfileComplete;

  String? _coverPhotoUrl;
  String? get coverPhotoUrl => _$this._coverPhotoUrl;
  set coverPhotoUrl(String? coverPhotoUrl) =>
      _$this._coverPhotoUrl = coverPhotoUrl;

  ListBuilder<RecentPostsStruct>? _recentPosts;
  ListBuilder<RecentPostsStruct> get recentPosts =>
      _$this._recentPosts ??= new ListBuilder<RecentPostsStruct>();
  set recentPosts(ListBuilder<RecentPostsStruct>? recentPosts) =>
      _$this._recentPosts = recentPosts;

  DateTime? _lastPostCreatedAt;
  DateTime? get lastPostCreatedAt => _$this._lastPostCreatedAt;
  set lastPostCreatedAt(DateTime? lastPostCreatedAt) =>
      _$this._lastPostCreatedAt = lastPostCreatedAt;

  DateTime? _isPremiumUser;
  DateTime? get isPremiumUser => _$this._isPremiumUser;
  set isPremiumUser(DateTime? isPremiumUser) =>
      _$this._isPremiumUser = isPremiumUser;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  UsersPublicDataRecordBuilder() {
    UsersPublicDataRecord._initializeBuilder(this);
  }

  UsersPublicDataRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _uid = $v.uid;
      _userDocumentReference = $v.userDocumentReference;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _registeredAt = $v.registeredAt;
      _updatedAt = $v.updatedAt;
      _gender = $v.gender;
      _birthday = $v.birthday;
      _followers = $v.followers?.toBuilder();
      _hasPhoto = $v.hasPhoto;
      _isProfileComplete = $v.isProfileComplete;
      _coverPhotoUrl = $v.coverPhotoUrl;
      _recentPosts = $v.recentPosts?.toBuilder();
      _lastPostCreatedAt = $v.lastPostCreatedAt;
      _isPremiumUser = $v.isPremiumUser;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(UsersPublicDataRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$UsersPublicDataRecord;
  }

  @override
  void update(void Function(UsersPublicDataRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  UsersPublicDataRecord build() => _build();

  _$UsersPublicDataRecord _build() {
    _$UsersPublicDataRecord _$result;
    try {
      _$result = _$v ??
          new _$UsersPublicDataRecord._(
              uid: uid,
              userDocumentReference: userDocumentReference,
              displayName: displayName,
              photoUrl: photoUrl,
              registeredAt: registeredAt,
              updatedAt: updatedAt,
              gender: gender,
              birthday: birthday,
              followers: _followers?.build(),
              hasPhoto: hasPhoto,
              isProfileComplete: isProfileComplete,
              coverPhotoUrl: coverPhotoUrl,
              recentPosts: _recentPosts?.build(),
              lastPostCreatedAt: lastPostCreatedAt,
              isPremiumUser: isPremiumUser,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'followers';
        _followers?.build();

        _$failedField = 'recentPosts';
        _recentPosts?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'UsersPublicDataRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
