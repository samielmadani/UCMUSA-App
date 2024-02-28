import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'events_record.g.dart';

abstract class EventsRecord
    implements Built<EventsRecord, EventsRecordBuilder> {
  static Serializer<EventsRecord> get serializer => _$eventsRecordSerializer;

  @nullable
  String get title;

  @nullable
  String get header;

  @nullable
  String get description;

  @nullable
  String get date;

  @nullable
  String get location;

  @nullable
  @BuiltValueField(wireName: 'LinkToSignup')
  String get linkToSignup;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(EventsRecordBuilder builder) => builder
    ..title = ''
    ..header = ''
    ..description = ''
    ..date = ''
    ..location = ''
    ..linkToSignup = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('events');

  static Stream<EventsRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  EventsRecord._();
  factory EventsRecord([void Function(EventsRecordBuilder) updates]) =
      _$EventsRecord;

  static EventsRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createEventsRecordData({
  String title,
  String header,
  String description,
  String date,
  String location,
  String linkToSignup,
}) =>
    serializers.toFirestore(
        EventsRecord.serializer,
        EventsRecord((e) => e
          ..title = title
          ..header = header
          ..description = description
          ..date = date
          ..location = location
          ..linkToSignup = linkToSignup));
