// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'places_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PlacesRecord> _$placesRecordSerializer =
    new _$PlacesRecordSerializer();

class _$PlacesRecordSerializer implements StructuredSerializer<PlacesRecord> {
  @override
  final Iterable<Type> types = const [PlacesRecord, _$PlacesRecord];
  @override
  final String wireName = 'PlacesRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PlacesRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    result
      ..add('title')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.address;
    result
      ..add('address')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.image;
    result
      ..add('image')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.gps;
    result
      ..add('gps')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.email;
    result
      ..add('email')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.displayName;
    result
      ..add('display_name')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.photoUrl;
    result
      ..add('photo_url')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.uid;
    result
      ..add('uid')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.createdTime;
    result
      ..add('created_time')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(DateTime)));
      value = object.phoneNumber;
    result
      ..add('phone_number')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(String)));
      value = object.reference;
    result
      ..add('Document__Reference__Field')
      ..add(serializers.serialize(value,
          specifiedType: const FullType(DocumentReference)));
      return result;
  }

  @override
  PlacesRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PlacesRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'title':
          result.title = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'address':
          result.address = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'gps':
          result.gps = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'display_name':
          result.displayName = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'photo_url':
          result.photoUrl = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'uid':
          result.uid = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'created_time':
          result.createdTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'phone_number':
          result.phoneNumber = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'Document__Reference__Field':
          result.reference = serializers.deserialize(value,
                  specifiedType: const FullType(DocumentReference))
              as DocumentReference;
          break;
      }
    }

    return result.build();
  }
}

class _$PlacesRecord extends PlacesRecord {
  @override
  final String title;
  @override
  final String address;
  @override
  final String image;
  @override
  final String gps;
  @override
  final String email;
  @override
  final String displayName;
  @override
  final String photoUrl;
  @override
  final String uid;
  @override
  final DateTime createdTime;
  @override
  final String phoneNumber;
  @override
  final DocumentReference reference;

  factory _$PlacesRecord([void Function(PlacesRecordBuilder) updates]) =>
      (new PlacesRecordBuilder()..update(updates)).build();

  _$PlacesRecord._(
      {this.title,
      this.address,
      this.image,
      this.gps,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  PlacesRecord rebuild(void Function(PlacesRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PlacesRecordBuilder toBuilder() => new PlacesRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PlacesRecord &&
        title == other.title &&
        address == other.address &&
        image == other.image &&
        gps == other.gps &&
        email == other.email &&
        displayName == other.displayName &&
        photoUrl == other.photoUrl &&
        uid == other.uid &&
        createdTime == other.createdTime &&
        phoneNumber == other.phoneNumber &&
        reference == other.reference;
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
                                        $jc($jc(0, title.hashCode),
                                            address.hashCode),
                                        image.hashCode),
                                    gps.hashCode),
                                email.hashCode),
                            displayName.hashCode),
                        photoUrl.hashCode),
                    uid.hashCode),
                createdTime.hashCode),
            phoneNumber.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('PlacesRecord')
          ..add('title', title)
          ..add('address', address)
          ..add('image', image)
          ..add('gps', gps)
          ..add('email', email)
          ..add('displayName', displayName)
          ..add('photoUrl', photoUrl)
          ..add('uid', uid)
          ..add('createdTime', createdTime)
          ..add('phoneNumber', phoneNumber)
          ..add('reference', reference))
        .toString();
  }
}

class PlacesRecordBuilder
    implements Builder<PlacesRecord, PlacesRecordBuilder> {
  _$PlacesRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _address;
  String get address => _$this._address;
  set address(String address) => _$this._address = address;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  String _gps;
  String get gps => _$this._gps;
  set gps(String gps) => _$this._gps = gps;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  String _displayName;
  String get displayName => _$this._displayName;
  set displayName(String displayName) => _$this._displayName = displayName;

  String _photoUrl;
  String get photoUrl => _$this._photoUrl;
  set photoUrl(String photoUrl) => _$this._photoUrl = photoUrl;

  String _uid;
  String get uid => _$this._uid;
  set uid(String uid) => _$this._uid = uid;

  DateTime _createdTime;
  DateTime get createdTime => _$this._createdTime;
  set createdTime(DateTime createdTime) => _$this._createdTime = createdTime;

  String _phoneNumber;
  String get phoneNumber => _$this._phoneNumber;
  set phoneNumber(String phoneNumber) => _$this._phoneNumber = phoneNumber;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  PlacesRecordBuilder() {
    PlacesRecord._initializeBuilder(this);
  }

  PlacesRecordBuilder get _$this {
    final $v = _$v;
    _title = $v.title;
    _address = $v.address;
    _image = $v.image;
    _gps = $v.gps;
    _email = $v.email;
    _displayName = $v.displayName;
    _photoUrl = $v.photoUrl;
    _uid = $v.uid;
    _createdTime = $v.createdTime;
    _phoneNumber = $v.phoneNumber;
    _reference = $v.reference;
    _$v = null;
      return this;
  }

  @override
  void replace(PlacesRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PlacesRecord;
  }

  @override
  void update(void Function(PlacesRecordBuilder) updates) {
    updates(this);
  }

  @override
  _$PlacesRecord build() {
    final _$result = _$v ??
        new _$PlacesRecord._(
            title: title,
            address: address,
            image: image,
            gps: gps,
            email: email,
            displayName: displayName,
            photoUrl: photoUrl,
            uid: uid,
            createdTime: createdTime,
            phoneNumber: phoneNumber,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
