// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'feedback_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<FeedbackRecord> _$feedbackRecordSerializer =
    new _$FeedbackRecordSerializer();

class _$FeedbackRecordSerializer
    implements StructuredSerializer<FeedbackRecord> {
  @override
  final Iterable<Type> types = const [FeedbackRecord, _$FeedbackRecord];
  @override
  final String wireName = 'FeedbackRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, FeedbackRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.message;
    if (value != null) {
      result
        ..add('message')
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
    value = object.email;
    if (value != null) {
      result
        ..add('email')
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
  FeedbackRecord deserialize(
      Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new FeedbackRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current as String;
      iterator.moveNext();
      final Object value = iterator.current;
      switch (key) {
        case 'message':
          result.message = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'time':
          result.time = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime;
          break;
        case 'email':
          result.email = serializers.deserialize(value,
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

class _$FeedbackRecord extends FeedbackRecord {
  @override
  final String message;
  @override
  final DateTime time;
  @override
  final String email;
  @override
  final DocumentReference reference;

  factory _$FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =>
      (new FeedbackRecordBuilder()..update(updates)).build();

  _$FeedbackRecord._({this.message, this.time, this.email, this.reference})
      : super._();

  @override
  FeedbackRecord rebuild(void Function(FeedbackRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  FeedbackRecordBuilder toBuilder() =>
      new FeedbackRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is FeedbackRecord &&
        message == other.message &&
        time == other.time &&
        email == other.email &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc($jc($jc(0, message.hashCode), time.hashCode), email.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('FeedbackRecord')
          ..add('message', message)
          ..add('time', time)
          ..add('email', email)
          ..add('reference', reference))
        .toString();
  }
}

class FeedbackRecordBuilder
    implements Builder<FeedbackRecord, FeedbackRecordBuilder> {
  _$FeedbackRecord _$v;

  String _message;
  String get message => _$this._message;
  set message(String message) => _$this._message = message;

  DateTime _time;
  DateTime get time => _$this._time;
  set time(DateTime time) => _$this._time = time;

  String _email;
  String get email => _$this._email;
  set email(String email) => _$this._email = email;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  FeedbackRecordBuilder() {
    FeedbackRecord._initializeBuilder(this);
  }

  FeedbackRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _message = $v.message;
      _time = $v.time;
      _email = $v.email;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(FeedbackRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$FeedbackRecord;
  }

  @override
  void update(void Function(FeedbackRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$FeedbackRecord build() {
    final _$result = _$v ??
        new _$FeedbackRecord._(
            message: message, time: time, email: email, reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
