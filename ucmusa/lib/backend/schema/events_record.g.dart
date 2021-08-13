// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'events_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<EventsRecord> _$eventsRecordSerializer =
    new _$EventsRecordSerializer();

class _$EventsRecordSerializer implements StructuredSerializer<EventsRecord> {
  @override
  final Iterable<Type> types = const [EventsRecord, _$EventsRecord];
  @override
  final String wireName = 'EventsRecord';

  @override
  Iterable<Object> serialize(Serializers serializers, EventsRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object>[];
    Object value;
    value = object.title;
    if (value != null) {
      result
        ..add('title')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.header;
    if (value != null) {
      result
        ..add('header')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.description;
    if (value != null) {
      result
        ..add('description')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.date;
    if (value != null) {
      result
        ..add('date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.location;
    if (value != null) {
      result
        ..add('location')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.linkToSignup;
    if (value != null) {
      result
        ..add('LinkToSignup')
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
  EventsRecord deserialize(Serializers serializers, Iterable<Object> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new EventsRecordBuilder();

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
        case 'header':
          result.header = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'description':
          result.description = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'date':
          result.date = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'location':
          result.location = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String;
          break;
        case 'LinkToSignup':
          result.linkToSignup = serializers.deserialize(value,
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

class _$EventsRecord extends EventsRecord {
  @override
  final String title;
  @override
  final String header;
  @override
  final String description;
  @override
  final String date;
  @override
  final String location;
  @override
  final String linkToSignup;
  @override
  final DocumentReference reference;

  factory _$EventsRecord([void Function(EventsRecordBuilder) updates]) =>
      (new EventsRecordBuilder()..update(updates)).build();

  _$EventsRecord._(
      {this.title,
      this.header,
      this.description,
      this.date,
      this.location,
      this.linkToSignup,
      this.reference})
      : super._();

  @override
  EventsRecord rebuild(void Function(EventsRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  EventsRecordBuilder toBuilder() => new EventsRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is EventsRecord &&
        title == other.title &&
        header == other.header &&
        description == other.description &&
        date == other.date &&
        location == other.location &&
        linkToSignup == other.linkToSignup &&
        reference == other.reference;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc(
                    $jc($jc($jc(0, title.hashCode), header.hashCode),
                        description.hashCode),
                    date.hashCode),
                location.hashCode),
            linkToSignup.hashCode),
        reference.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper('EventsRecord')
          ..add('title', title)
          ..add('header', header)
          ..add('description', description)
          ..add('date', date)
          ..add('location', location)
          ..add('linkToSignup', linkToSignup)
          ..add('reference', reference))
        .toString();
  }
}

class EventsRecordBuilder
    implements Builder<EventsRecord, EventsRecordBuilder> {
  _$EventsRecord _$v;

  String _title;
  String get title => _$this._title;
  set title(String title) => _$this._title = title;

  String _header;
  String get header => _$this._header;
  set header(String header) => _$this._header = header;

  String _description;
  String get description => _$this._description;
  set description(String description) => _$this._description = description;

  String _date;
  String get date => _$this._date;
  set date(String date) => _$this._date = date;

  String _location;
  String get location => _$this._location;
  set location(String location) => _$this._location = location;

  String _linkToSignup;
  String get linkToSignup => _$this._linkToSignup;
  set linkToSignup(String linkToSignup) => _$this._linkToSignup = linkToSignup;

  DocumentReference _reference;
  DocumentReference get reference => _$this._reference;
  set reference(DocumentReference reference) => _$this._reference = reference;

  EventsRecordBuilder() {
    EventsRecord._initializeBuilder(this);
  }

  EventsRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _title = $v.title;
      _header = $v.header;
      _description = $v.description;
      _date = $v.date;
      _location = $v.location;
      _linkToSignup = $v.linkToSignup;
      _reference = $v.reference;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(EventsRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$EventsRecord;
  }

  @override
  void update(void Function(EventsRecordBuilder) updates) {
    if (updates != null) updates(this);
  }

  @override
  _$EventsRecord build() {
    final _$result = _$v ??
        new _$EventsRecord._(
            title: title,
            header: header,
            description: description,
            date: date,
            location: location,
            linkToSignup: linkToSignup,
            reference: reference);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,lines_longer_than_80_chars,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new
