// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'prayer_month_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<PrayerMonthRecord> _$prayerMonthRecordSerializer =
    new _$PrayerMonthRecordSerializer();

class _$PrayerMonthRecordSerializer
    implements StructuredSerializer<PrayerMonthRecord> {
  @override
  final Iterable<Type> types = const [PrayerMonthRecord, _$PrayerMonthRecord];
  @override
  final String wireName = 'PrayerMonthRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, PrayerMonthRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.image;
    if (value != null) {
      result
        ..add('image')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.time;
    if (value != null) {
      result
        ..add('time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.month;
    if (value != null) {
      result
        ..add('month')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.email;
    if (value != null) {
      result
        ..add('email')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.displayName;
    if (value != null) {
      result
        ..add('display_name')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.photoUrl;
    if (value != null) {
      result
        ..add('photo_url')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.uid;
    if (value != null) {
      result
        ..add('uid')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.createdTime;
    if (value != null) {
      result
        ..add('created_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.phoneNumber;
    if (value != null) {
      result
        ..add('phone_number')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.reference;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DocumentReference)));
    }
    return result;
  }

  @override
  PrayerMonthRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new PrayerMonthRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'image':
          result.image = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'month':
          result.month = serializers.deserialize(value,
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

class _$PrayerMonthRecord extends PrayerMonthRecord {
  @override
  final String image;
  @override
  final DateTime time;
  @override
  final String month;
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

  factory _$PrayerMonthRecord(
          [void Function(PrayerMonthRecordBuilder) updates]) =>
      (new PrayerMonthRecordBuilder()..update(updates)).build();

  _$PrayerMonthRecord._(
      {this.image,
      this.time,
      this.month,
      this.email,
      this.displayName,
      this.photoUrl,
      this.uid,
      this.createdTime,
      this.phoneNumber,
      this.reference})
      : super._();

  @override
  PrayerMonthRecord rebuild(void Function(PrayerMonthRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  PrayerMonthRecordBuilder toBuilder() =>
      new PrayerMonthRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is PrayerMonthRecord &&
        image == other.image &&
        time == other.time &&
        month == other.month &&
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
                                $jc($jc($jc(0, image.hashCode), time.hashCode),
                                    month.hashCode),
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
    return (newBuiltValueToStringHelper('PrayerMonthRecord')
          ..add('image', image)
          ..add('time', time)
          ..add('month', month)
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

class PrayerMonthRecordBuilder
    implements Builder<PrayerMonthRecord, PrayerMonthRecordBuilder> {
  _$PrayerMonthRecord _$v;

  String _image;
  String get image => _$this._image;
  set image(String image) => _$this._image = image;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _month;
  String get month => _$this._month;
  set month(String month) => _$this._month = month;

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

  PrayerMonthRecordBuilder() {
    PrayerMonthRecord._initializeBuilder(this);
  }

  PrayerMonthRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _image = $v.image;
      _time = $v.time;
      _month = $v.month;
      _email = $v.email;
      _displayName = $v.displayName;
      _photoUrl = $v.photoUrl;
      _uid = $v.uid;
      _createdTime = $v.createdTime;
      _phoneNumber = $v.phoneNumber;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(PrayerMonthRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$PrayerMonthRecord;
  }

  @override
  void update(void Function(PrayerMonthRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$PrayerMonthRecord build() {
    final _$result = _$v ??
        new _$PrayerMonthRecord._(
            image: image,
            time: time,
            month: month,
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
