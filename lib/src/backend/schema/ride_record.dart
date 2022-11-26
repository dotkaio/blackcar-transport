import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'ride_record.g.dart';

abstract class RideRecord implements Built<RideRecord, RideRecordBuilder> {
  static Serializer<RideRecord> get serializer => _$rideRecordSerializer;

  @BuiltValueField(wireName: 'ride_id')
  String? get rideId;

  @BuiltValueField(wireName: 'user_id')
  DocumentReference? get userId;

  @BuiltValueField(wireName: 'pickup_date')
  DateTime? get pickupDate;

  @BuiltValueField(wireName: 'pickup_time')
  DateTime? get pickupTime;

  @BuiltValueField(wireName: 'pickup_address')
  String? get pickupAddress;

  @BuiltValueField(wireName: 'dropoff_date')
  DateTime? get dropoffDate;

  @BuiltValueField(wireName: 'dropoff_time')
  DateTime? get dropoffTime;

  @BuiltValueField(wireName: 'dropoff_address')
  String? get dropoffAddress;

  @BuiltValueField(wireName: 'ride_type')
  String? get rideType;

  @BuiltValueField(wireName: 'ride_total_time')
  String? get rideTotalTime;

  @BuiltValueField(wireName: 'pickup_latlng')
  LatLng? get pickupLatlng;

  @BuiltValueField(wireName: 'dropoff_latlng')
  LatLng? get dropoffLatlng;

  int? get total;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(RideRecordBuilder builder) => builder
    ..rideId = ''
    ..pickupAddress = ''
    ..dropoffAddress = ''
    ..rideType = ''
    ..rideTotalTime = ''
    ..total = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('ride');

  static Stream<RideRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<RideRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  RideRecord._();
  factory RideRecord([void Function(RideRecordBuilder) updates]) = _$RideRecord;

  static RideRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createRideRecordData({
  String? rideId,
  DocumentReference? userId,
  DateTime? pickupDate,
  DateTime? pickupTime,
  String? pickupAddress,
  DateTime? dropoffDate,
  DateTime? dropoffTime,
  String? dropoffAddress,
  String? rideType,
  String? rideTotalTime,
  LatLng? pickupLatlng,
  LatLng? dropoffLatlng,
  int? total,
}) {
  final firestoreData = serializers.toFirestore(
    RideRecord.serializer,
    RideRecord(
      (r) => r
        ..rideId = rideId
        ..userId = userId
        ..pickupDate = pickupDate
        ..pickupTime = pickupTime
        ..pickupAddress = pickupAddress
        ..dropoffDate = dropoffDate
        ..dropoffTime = dropoffTime
        ..dropoffAddress = dropoffAddress
        ..rideType = rideType
        ..rideTotalTime = rideTotalTime
        ..pickupLatlng = pickupLatlng
        ..dropoffLatlng = dropoffLatlng
        ..total = total,
    ),
  );

  return firestoreData;
}
