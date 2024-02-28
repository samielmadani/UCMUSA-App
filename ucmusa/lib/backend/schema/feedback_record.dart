import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'feedback_record.g.dart';

abstract class FeedbackRecord
    implements Built<FeedbackRecord, FeedbackRecordBuilder> {
  static Serializer<FeedbackRecord> get serializer =>
      _$feedbackRecordSerializer;

  @nullable
  String get message;

  @nullable
  DateTime get time;

  @nullable
  String get email;

  @nullable
  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference get reference;

  static void _initializeBuilder(FeedbackRecordBuilder builder) => builder
    ..message = ''
    ..email = '';

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('feedback');

  static Stream<FeedbackRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s)));

  FeedbackRecord._();
  factory FeedbackRecord([void Function(FeedbackRecordBuilder) updates]) =
      _$FeedbackRecord;

  static FeedbackRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(
          serializer, {...data, kDocumentReferenceField: reference});
}

Map<String, dynamic> createFeedbackRecordData({
  String message,
  DateTime time,
  String email,
}) =>
    serializers.toFirestore(
        FeedbackRecord.serializer,
        FeedbackRecord((f) => f
          ..message = message
          ..time = time
          ..email = email));
