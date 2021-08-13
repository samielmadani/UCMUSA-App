import 'dart:async';

import 'index.dart';
import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'prayer_month_record.g.dart';

abstract class PrayerMonthRecord
    implements Built<PrayerMonthRecord, PrayerMonthRecordBuilder> {
  static Serializer<PrayerMonthRecord> get serializer =>
      _$prayerMonthRecordSerializer;

  @nullable
  String get image;

  @nullable
  DateTime get time;

  @nullable
  String get month;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: 'display_name')
  String get displayName;

  @nullable
  @BuiltValueField(wireName: 'photo_url')
  String get photoUrl;

  @nullable
  String get uid;

  @nullable
  @BuiltValueField(wireName: 'created_time')
  DateTime get createdTime;

  @nullable
  @BuiltValueField(wireName: 'phone_number')
  String get phoneNumber;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(PrayerMonthRecordBuilder builder) => builder
    ..image = ''
    ..month = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('prayerMonth');

  static Stream<PrayerMonthRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PrayerMonthRecord._();
  factory PrayerMonthRecord([void Function(PrayerMonthRecordBuilder) updates]) =
      _$PrayerMonthRecord;

  static PrayerMonthRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createPrayerMonthRecordData({
  String image,
  DateTime time,
  String month,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        PrayerMonthRecord.serializer,
        PrayerMonthRecord((p) => p
          ..image = image
          ..time = time
          ..month = month
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
