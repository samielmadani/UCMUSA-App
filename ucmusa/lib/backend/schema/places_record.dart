import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'places_record.g.dart';

abstract class PlacesRecord
    implements Built<PlacesRecord, PlacesRecordBuilder> {
  static Serializer<PlacesRecord> get serializer => _$placesRecordSerializer;

  @nullable
  String get title;

  @nullable
  String get address;

  @nullable
  String get image;

  @nullable
  String get gps;

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

  static void _initializeBuilder(PlacesRecordBuilder builder) => builder
    ..title = ''
    ..address = ''
    ..image = ''
    ..gps = ''
    ..email = ''
    ..displayName = ''
    ..photoUrl = ''
    ..uid = ''
    ..phoneNumber = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('places');

  static Stream<PlacesRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  PlacesRecord._();
  factory PlacesRecord([void Function(PlacesRecordBuilder) updates]) =
      _$PlacesRecord;

  static PlacesRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createPlacesRecordData({
  String title,
  String address,
  String image,
  String gps,
  String email,
  String displayName,
  String photoUrl,
  String uid,
  DateTime createdTime,
  String phoneNumber,
}) =>
    serializers.toFirestore(
        PlacesRecord.serializer,
        PlacesRecord((p) => p
          ..title = title
          ..address = address
          ..image = image
          ..gps = gps
          ..email = email
          ..displayName = displayName
          ..photoUrl = photoUrl
          ..uid = uid
          ..createdTime = createdTime
          ..phoneNumber = phoneNumber));
