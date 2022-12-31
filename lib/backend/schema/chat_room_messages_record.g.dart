// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'chat_room_messages_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<ChatRoomMessagesRecord> _$chatRoomMessagesRecordSerializer =
    new _$ChatRoomMessagesRecordSerializer();

class _$ChatRoomMessagesRecordSerializer
    implements StructuredSerializer<ChatRoomMessagesRecord> {
  @override
  final Iterable<Type> types = const [
    ChatRoomMessagesRecord,
    _$ChatRoomMessagesRecord
  ];
  @override
  final String wireName = 'ChatRoomMessagesRecord';

  @override
  Iterable<Object?> serialize(
      Serializers serializers, ChatRoomMessagesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.senderDocumentReference;
    if (value != null) {
      result
        ..add('senderDocumentReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.chatRoomDocumentReference;
    if (value != null) {
      result
        ..add('chatRoomDocumentReference')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.text;
    if (value != null) {
      result
        ..add('text')
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
    value = object.sentAt;
    if (value != null) {
      result
        ..add('sentAt')
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
  ChatRoomMessagesRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new ChatRoomMessagesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'senderDocumentReference':
          result.senderDocumentReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'chatRoomDocumentReference':
          result.chatRoomDocumentReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'text':
          result.text = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photoUrl':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'sentAt':
          result.sentAt = serializers.deserialize(value,
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

class _$ChatRoomMessagesRecord extends ChatRoomMessagesRecord {
  @override
  final DocumentReference<Object?>? senderDocumentReference;
  @override
  final DocumentReference<Object?>? chatRoomDocumentReference;
  @override
  final String? text;
  @override
  final String? photoUrl;
  @override
  final DateTime? sentAt;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$ChatRoomMessagesRecord(
          [void Function(ChatRoomMessagesRecordBuilder)? updates]) =>
      (new ChatRoomMessagesRecordBuilder()..update(updates))._build();

  _$ChatRoomMessagesRecord._(
      {this.senderDocumentReference,
      this.chatRoomDocumentReference,
      this.text,
      this.photoUrl,
      this.sentAt,
      this.ffRef})
      : super._();

  @override
  ChatRoomMessagesRecord rebuild(
          void Function(ChatRoomMessagesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  ChatRoomMessagesRecordBuilder toBuilder() =>
      new ChatRoomMessagesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is ChatRoomMessagesRecord &&
        senderDocumentReference == other.senderDocumentReference &&
        chatRoomDocumentReference == other.chatRoomDocumentReference &&
        text == other.text &&
        photoUrl == other.photoUrl &&
        sentAt == other.sentAt &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc(0, senderDocumentReference.hashCode),
                        chatRoomDocumentReference.hashCode),
                    text.hashCode),
                photoUrl.hashCode),
            sentAt.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'ChatRoomMessagesRecord')
          ..add('senderDocumentReference', senderDocumentReference)
          ..add('chatRoomDocumentReference', chatRoomDocumentReference)
          ..add('text', text)
          ..add('photoUrl', photoUrl)
          ..add('sentAt', sentAt)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class ChatRoomMessagesRecordBuilder
    implements Builder<ChatRoomMessagesRecord, ChatRoomMessagesRecordBuilder> {
  _$ChatRoomMessagesRecord? _$v;

  DocumentReference<Object?>? _senderDocumentReference;
  DocumentReference<Object?>? get senderDocumentReference =>
      _$this._senderDocumentReference;
  set senderDocumentReference(
          DocumentReference<Object?>? senderDocumentReference) =>
      _$this._senderDocumentReference = senderDocumentReference;

  DocumentReference<Object?>? _chatRoomDocumentReference;
  DocumentReference<Object?>? get chatRoomDocumentReference =>
      _$this._chatRoomDocumentReference;
  set chatRoomDocumentReference(
          DocumentReference<Object?>? chatRoomDocumentReference) =>
      _$this._chatRoomDocumentReference = chatRoomDocumentReference;

  String? _text;
  String? get text => _$this._text;
  set text(String? text) => _$this._text = text;

  String? _photoUrl;
  String? get photoUrl => _$this._photoUrl;
  set photoUrl(String? photoUrl) => _$this._photoUrl = photoUrl;

  DateTime? _sentAt;
  DateTime? get sentAt => _$this._sentAt;
  set sentAt(DateTime? sentAt) => _$this._sentAt = sentAt;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  ChatRoomMessagesRecordBuilder() {
    ChatRoomMessagesRecord._initializeBuilder(this);
  }

  ChatRoomMessagesRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _senderDocumentReference = $v.senderDocumentReference;
      _chatRoomDocumentReference = $v.chatRoomDocumentReference;
      _text = $v.text;
      _photoUrl = $v.photoUrl;
      _sentAt = $v.sentAt;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(ChatRoomMessagesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$ChatRoomMessagesRecord;
  }

  @override
  void update(void Function(ChatRoomMessagesRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  ChatRoomMessagesRecord build() => _build();

  _$ChatRoomMessagesRecord _build() {
    final _$result = _$v ??
        new _$ChatRoomMessagesRecord._(
            senderDocumentReference: senderDocumentReference,
            chatRoomDocumentReference: chatRoomDocumentReference,
            text: text,
            photoUrl: photoUrl,
            sentAt: sentAt,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
