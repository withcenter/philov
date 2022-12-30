// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_rooms_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatRoomsRecord> _$chatRoomsRecordSerializer =
    new _$ChatRoomsRecordSerializer();

class _$ChatRoomsRecordSerializer
    implements StructuredSerializer<ChatRoomsRecord> {
  @override
  final Iterable<Type> types = const [ChatRoomsRecord, _$ChatRoomsRecord];
  @override
  final String wireName = 'ChatRoomsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, ChatRoomsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.userDocumentReferences;
    if (value != null) {
      result
        ..add('userDocumentReferences')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.lastMessage;
    if (value != null) {
      result
        ..add('lastMessage')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.lastMessageSentAt;
    if (value != null) {
      result
        ..add('lastMessageSentAt')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.lastMessageSeenBy;
    if (value != null) {
      result
        ..add('lastMessageSeenBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.lastMessageSentBy;
    if (value != null) {
      result
        ..add('lastMessageSentBy')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.moderatorUserDocumentReference;
    if (value != null) {
      result
        ..add('moderatorUserDocumentReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.unsubscribedUserDocumentReferences;
    if (value != null) {
      result
        ..add('unsubscribedUserDocumentReferences')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
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
  ChatRoomsRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatRoomsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'userDocumentReferences':
          result.userDocumentReferences.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'lastMessage':
          result.lastMessage = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'lastMessageSentAt':
          result.lastMessageSentAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'lastMessageSeenBy':
          result.lastMessageSeenBy.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'lastMessageSentBy':
          result.lastMessageSentBy = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'moderatorUserDocumentReference':
          result.moderatorUserDocumentReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'unsubscribedUserDocumentReferences':
          result.unsubscribedUserDocumentReferences
              .replace(serializers.deserialize(value,
                  specifiedType: const FullType(BuiltList, const [
                    const FullType(DocumentReference,
                        const [const FullType.nullable(Object)])
                  ]))! as BuiltList<Object?>);
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

class _$ChatRoomsRecord extends ChatRoomsRecord {
  @override
  final BuiltList<DocumentReference<Object?>>? userDocumentReferences;
  @override
  final String? lastMessage;
  @override
  final DateTime? lastMessageSentAt;
  @override
  final BuiltList<DocumentReference<Object?>>? lastMessageSeenBy;
  @override
  final DocumentReference<Object?>? lastMessageSentBy;
  @override
  final String? title;
  @override
  final DocumentReference<Object?>? moderatorUserDocumentReference;
  @override
  final BuiltList<DocumentReference<Object?>>?
      unsubscribedUserDocumentReferences;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatRoomsRecord([void Function(ChatRoomsRecordBuilder)? updates]) =>
      (new ChatRoomsRecordBuilder()..update(updates))._build();

  _$ChatRoomsRecord._(
      {this.userDocumentReferences,
      this.lastMessage,
      this.lastMessageSentAt,
      this.lastMessageSeenBy,
      this.lastMessageSentBy,
      this.title,
      this.moderatorUserDocumentReference,
      this.unsubscribedUserDocumentReferences,
      this.ffRef})
      : super._();

  @override
  ChatRoomsRecord rebuild(void Function(ChatRoomsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatRoomsRecordBuilder toBuilder() =>
      new ChatRoomsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatRoomsRecord &&
        userDocumentReferences == other.userDocumentReferences &&
        lastMessage == other.lastMessage &&
        lastMessageSentAt == other.lastMessageSentAt &&
        lastMessageSeenBy == other.lastMessageSeenBy &&
        lastMessageSentBy == other.lastMessageSentBy &&
        title == other.title &&
        moderatorUserDocumentReference ==
            other.moderatorUserDocumentReference &&
        unsubscribedUserDocumentReferences ==
            other.unsubscribedUserDocumentReferences &&
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
                                $jc($jc(0, userDocumentReferences.hashCode),
                                    lastMessage.hashCode),
                                lastMessageSentAt.hashCode),
                            lastMessageSeenBy.hashCode),
                        lastMessageSentBy.hashCode),
                    title.hashCode),
                moderatorUserDocumentReference.hashCode),
            unsubscribedUserDocumentReferences.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatRoomsRecord')
          ..add('userDocumentReferences', userDocumentReferences)
          ..add('lastMessage', lastMessage)
          ..add('lastMessageSentAt', lastMessageSentAt)
          ..add('lastMessageSeenBy', lastMessageSeenBy)
          ..add('lastMessageSentBy', lastMessageSentBy)
          ..add('title', title)
          ..add(
              'moderatorUserDocumentReference', moderatorUserDocumentReference)
          ..add('unsubscribedUserDocumentReferences',
              unsubscribedUserDocumentReferences)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatRoomsRecordBuilder
    implements Builder<ChatRoomsRecord, ChatRoomsRecordBuilder> {
  _$ChatRoomsRecord? _$v;

  ListBuilder<DocumentReference<Object?>>? _userDocumentReferences;
  ListBuilder<DocumentReference<Object?>> get userDocumentReferences =>
      _$this._userDocumentReferences ??=
          new ListBuilder<DocumentReference<Object?>>();
  set userDocumentReferences(
          ListBuilder<DocumentReference<Object?>>? userDocumentReferences) =>
      _$this._userDocumentReferences = userDocumentReferences;

  String? _lastMessage;
  String? get lastMessage => _$this._lastMessage;
  set lastMessage(String? lastMessage) => _$this._lastMessage = lastMessage;

  DateTime? _lastMessageSentAt;
  DateTime? get lastMessageSentAt => _$this._lastMessageSentAt;
  set lastMessageSentAt(DateTime? lastMessageSentAt) =>
      _$this._lastMessageSentAt = lastMessageSentAt;

  ListBuilder<DocumentReference<Object?>>? _lastMessageSeenBy;
  ListBuilder<DocumentReference<Object?>> get lastMessageSeenBy =>
      _$this._lastMessageSeenBy ??=
          new ListBuilder<DocumentReference<Object?>>();
  set lastMessageSeenBy(
          ListBuilder<DocumentReference<Object?>>? lastMessageSeenBy) =>
      _$this._lastMessageSeenBy = lastMessageSeenBy;

  DocumentReference<Object?>? _lastMessageSentBy;
  DocumentReference<Object?>? get lastMessageSentBy =>
      _$this._lastMessageSentBy;
  set lastMessageSentBy(DocumentReference<Object?>? lastMessageSentBy) =>
      _$this._lastMessageSentBy = lastMessageSentBy;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  DocumentReference<Object?>? _moderatorUserDocumentReference;
  DocumentReference<Object?>? get moderatorUserDocumentReference =>
      _$this._moderatorUserDocumentReference;
  set moderatorUserDocumentReference(
          DocumentReference<Object?>? moderatorUserDocumentReference) =>
      _$this._moderatorUserDocumentReference = moderatorUserDocumentReference;

  ListBuilder<DocumentReference<Object?>>? _unsubscribedUserDocumentReferences;
  ListBuilder<DocumentReference<Object?>>
      get unsubscribedUserDocumentReferences =>
          _$this._unsubscribedUserDocumentReferences ??=
              new ListBuilder<DocumentReference<Object?>>();
  set unsubscribedUserDocumentReferences(
          ListBuilder<DocumentReference<Object?>>?
              unsubscribedUserDocumentReferences) =>
      _$this._unsubscribedUserDocumentReferences =
          unsubscribedUserDocumentReferences;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatRoomsRecordBuilder() {
    ChatRoomsRecord._initializeBuilder(this);
  }

  ChatRoomsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _userDocumentReferences = $v.userDocumentReferences?.toBuilder();
      _lastMessage = $v.lastMessage;
      _lastMessageSentAt = $v.lastMessageSentAt;
      _lastMessageSeenBy = $v.lastMessageSeenBy?.toBuilder();
      _lastMessageSentBy = $v.lastMessageSentBy;
      _title = $v.title;
      _moderatorUserDocumentReference = $v.moderatorUserDocumentReference;
      _unsubscribedUserDocumentReferences =
          $v.unsubscribedUserDocumentReferences?.toBuilder();
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatRoomsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatRoomsRecord;
  }

  @override
  void update(void Function(ChatRoomsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatRoomsRecord build() => _build();

  _$ChatRoomsRecord _build() {
    _$ChatRoomsRecord _$result;
    try {
      _$result = _$v ??
          new _$ChatRoomsRecord._(
              userDocumentReferences: _userDocumentReferences?.build(),
              lastMessage: lastMessage,
              lastMessageSentAt: lastMessageSentAt,
              lastMessageSeenBy: _lastMessageSeenBy?.build(),
              lastMessageSentBy: lastMessageSentBy,
              title: title,
              moderatorUserDocumentReference: moderatorUserDocumentReference,
              unsubscribedUserDocumentReferences:
                  _unsubscribedUserDocumentReferences?.build(),
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'userDocumentReferences';
        _userDocumentReferences?.build();

        _$failedField = 'lastMessageSeenBy';
        _lastMessageSeenBy?.build();

        _$failedField = 'unsubscribedUserDocumentReferences';
        _unsubscribedUserDocumentReferences?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'ChatRoomsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
