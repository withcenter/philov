// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'posts_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PostsRecord> _$postsRecordSerializer = new _$PostsRecordSerializer();

class _$PostsRecordSerializer implements StructuredSerializer<PostsRecord> {
  @override
  final Iterable<Type> types = const [PostsRecord, _$PostsRecord];
  @override
  final String wireName = 'PostsRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, PostsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.category;
    if (value != null) {
      result
        ..add('category')
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
    value = object.createdAt;
    if (value != null) {
      result
        ..add('createdAt')
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
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.content;
    if (value != null) {
      result
        ..add('content')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photos;
    if (value != null) {
      result
        ..add('photos')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.hasPhoto;
    if (value != null) {
      result
        ..add('hasPhoto')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.noOfComments;
    if (value != null) {
      result
        ..add('noOfComments')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasComment;
    if (value != null) {
      result
        ..add('hasComment')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.deleted;
    if (value != null) {
      result
        ..add('deleted')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.likes;
    if (value != null) {
      result
        ..add('likes')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(BuiltList, const [
              const FullType(
                  DocumentReference, const [const FullType.nullable(Object)])
            ])));
    }
    value = object.noOfLikes;
    if (value != null) {
      result
        ..add('noOfLikes')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.hasLike;
    if (value != null) {
      result
        ..add('hasLike')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(bool)));
    }
    value = object.noOfViews;
    if (value != null) {
      result
        ..add('noOfViews')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  PostsRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PostsRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'category':
          result.category = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'userDocumentReference':
          result.userDocumentReference = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'createdAt':
          result.createdAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'updatedAt':
          result.updatedAt = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'content':
          result.content = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'photos':
          result.photos = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'hasPhoto':
          result.hasPhoto = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'noOfComments':
          result.noOfComments = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasComment':
          result.hasComment = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'deleted':
          result.deleted = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'likes':
          result.likes.replace(serializers.deserialize(value,
              specifiedType: const FullType(BuiltList, const [
                const FullType(
                    DocumentReference, const [const FullType.nullable(Object)])
              ]))! as BuiltList<Object?>);
          break;
        case 'noOfLikes':
          result.noOfLikes = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'hasLike':
          result.hasLike = serializers.deserialize(value,
              specifiedType: const FullType(bool)) as bool?;
          break;
        case 'noOfViews':
          result.noOfViews = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$PostsRecord extends PostsRecord {
  @override
  final String? category;
  @override
  final DocumentReference<Object?>? userDocumentReference;
  @override
  final DateTime? createdAt;
  @override
  final DateTime? updatedAt;
  @override
  final String? title;
  @override
  final String? content;
  @override
  final String? photos;
  @override
  final bool? hasPhoto;
  @override
  final int? noOfComments;
  @override
  final bool? hasComment;
  @override
  final bool? deleted;
  @override
  final BuiltList<DocumentReference<Object?>>? likes;
  @override
  final int? noOfLikes;
  @override
  final bool? hasLike;
  @override
  final int? noOfViews;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$PostsRecord([void Function(PostsRecordBuilder)? updates]) =>
      (new PostsRecordBuilder()..update(updates))._build();

  _$PostsRecord._(
      {this.category,
      this.userDocumentReference,
      this.createdAt,
      this.updatedAt,
      this.title,
      this.content,
      this.photos,
      this.hasPhoto,
      this.noOfComments,
      this.hasComment,
      this.deleted,
      this.likes,
      this.noOfLikes,
      this.hasLike,
      this.noOfViews,
      this.ffRef})
      : super._();

  @override
  PostsRecord rebuild(void Function(PostsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PostsRecordBuilder toBuilder() => new PostsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PostsRecord &&
        category == other.category &&
        userDocumentReference == other.userDocumentReference &&
        createdAt == other.createdAt &&
        updatedAt == other.updatedAt &&
        title == other.title &&
        content == other.content &&
        photos == other.photos &&
        hasPhoto == other.hasPhoto &&
        noOfComments == other.noOfComments &&
        hasComment == other.hasComment &&
        deleted == other.deleted &&
        likes == other.likes &&
        noOfLikes == other.noOfLikes &&
        hasLike == other.hasLike &&
        noOfViews == other.noOfViews &&
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
                                                                    category
                                                                        .hashCode),
                                                                userDocumentReference
                                                                    .hashCode),
                                                            createdAt.hashCode),
                                                        updatedAt.hashCode),
                                                    title.hashCode),
                                                content.hashCode),
                                            photos.hashCode),
                                        hasPhoto.hashCode),
                                    noOfComments.hashCode),
                                hasComment.hashCode),
                            deleted.hashCode),
                        likes.hashCode),
                    noOfLikes.hashCode),
                hasLike.hashCode),
            noOfViews.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'PostsRecord')
          ..add('category', category)
          ..add('userDocumentReference', userDocumentReference)
          ..add('createdAt', createdAt)
          ..add('updatedAt', updatedAt)
          ..add('title', title)
          ..add('content', content)
          ..add('photos', photos)
          ..add('hasPhoto', hasPhoto)
          ..add('noOfComments', noOfComments)
          ..add('hasComment', hasComment)
          ..add('deleted', deleted)
          ..add('likes', likes)
          ..add('noOfLikes', noOfLikes)
          ..add('hasLike', hasLike)
          ..add('noOfViews', noOfViews)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class PostsRecordBuilder implements Builder<PostsRecord, PostsRecordBuilder> {
  _$PostsRecord? _$v;

  String? _category;
  String? get category => _$this._category;
  set category(String? category) => _$this._category = category;

  DocumentReference<Object?>? _userDocumentReference;
  DocumentReference<Object?>? get userDocumentReference =>
      _$this._userDocumentReference;
  set userDocumentReference(
          DocumentReference<Object?>? userDocumentReference) =>
      _$this._userDocumentReference = userDocumentReference;

  DateTime? _createdAt;
  DateTime? get createdAt => _$this._createdAt;
  set createdAt(DateTime? createdAt) => _$this._createdAt = createdAt;

  DateTime? _updatedAt;
  DateTime? get updatedAt => _$this._updatedAt;
  set updatedAt(DateTime? updatedAt) => _$this._updatedAt = updatedAt;

  String? _title;
  String? get title => _$this._title;
  set title(String? title) => _$this._title = title;

  String? _content;
  String? get content => _$this._content;
  set content(String? content) => _$this._content = content;

  String? _photos;
  String? get photos => _$this._photos;
  set photos(String? photos) => _$this._photos = photos;

  bool? _hasPhoto;
  bool? get hasPhoto => _$this._hasPhoto;
  set hasPhoto(bool? hasPhoto) => _$this._hasPhoto = hasPhoto;

  int? _noOfComments;
  int? get noOfComments => _$this._noOfComments;
  set noOfComments(int? noOfComments) => _$this._noOfComments = noOfComments;

  bool? _hasComment;
  bool? get hasComment => _$this._hasComment;
  set hasComment(bool? hasComment) => _$this._hasComment = hasComment;

  bool? _deleted;
  bool? get deleted => _$this._deleted;
  set deleted(bool? deleted) => _$this._deleted = deleted;

  ListBuilder<DocumentReference<Object?>>? _likes;
  ListBuilder<DocumentReference<Object?>> get likes =>
      _$this._likes ??= new ListBuilder<DocumentReference<Object?>>();
  set likes(ListBuilder<DocumentReference<Object?>>? likes) =>
      _$this._likes = likes;

  int? _noOfLikes;
  int? get noOfLikes => _$this._noOfLikes;
  set noOfLikes(int? noOfLikes) => _$this._noOfLikes = noOfLikes;

  bool? _hasLike;
  bool? get hasLike => _$this._hasLike;
  set hasLike(bool? hasLike) => _$this._hasLike = hasLike;

  int? _noOfViews;
  int? get noOfViews => _$this._noOfViews;
  set noOfViews(int? noOfViews) => _$this._noOfViews = noOfViews;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  PostsRecordBuilder() {
    PostsRecord._initializeBuilder(this);
  }

  PostsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _category = $v.category;
      _userDocumentReference = $v.userDocumentReference;
      _createdAt = $v.createdAt;
      _updatedAt = $v.updatedAt;
      _title = $v.title;
      _content = $v.content;
      _photos = $v.photos;
      _hasPhoto = $v.hasPhoto;
      _noOfComments = $v.noOfComments;
      _hasComment = $v.hasComment;
      _deleted = $v.deleted;
      _likes = $v.likes?.toBuilder();
      _noOfLikes = $v.noOfLikes;
      _hasLike = $v.hasLike;
      _noOfViews = $v.noOfViews;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PostsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PostsRecord;
  }

  @override
  void update(void Function(PostsRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  PostsRecord build() => _build();

  _$PostsRecord _build() {
    _$PostsRecord _$result;
    try {
      _$result = _$v ??
          new _$PostsRecord._(
              category: category,
              userDocumentReference: userDocumentReference,
              createdAt: createdAt,
              updatedAt: updatedAt,
              title: title,
              content: content,
              photos: photos,
              hasPhoto: hasPhoto,
              noOfComments: noOfComments,
              hasComment: hasComment,
              deleted: deleted,
              likes: _likes?.build(),
              noOfLikes: noOfLikes,
              hasLike: hasLike,
              noOfViews: noOfViews,
              ffRef: ffRef);
    } catch (_) {
      late String _$failedField;
      try {
        _$failedField = 'likes';
        _likes?.build();
      } catch (e) {
        throw new BuiltValueNestedFieldError(
            r'PostsRecord', _$failedField, e.toString());
      }
      rethrow;
    }
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
