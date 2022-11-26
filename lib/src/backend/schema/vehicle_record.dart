import 'dart:async';

import 'serializers.dart';
import 'package:built_value/built_value.dart';

part 'vehicle_record.g.dart';

abstract class VehicleRecord
    implements Built<VehicleRecord, VehicleRecordBuilder> {
  static Serializer<VehicleRecord> get serializer => _$vehicleRecordSerializer;

  @BuiltValueField(wireName: 'vehicle_type')
  String? get vehicleType;

  @BuiltValueField(wireName: 'vehicle_model')
  String? get vehicleModel;

  @BuiltValueField(wireName: 'vehicle_base_price')
  int? get vehicleBasePrice;

  @BuiltValueField(wireName: 'vehicle_year')
  int? get vehicleYear;

  @BuiltValueField(wireName: 'vehicle_color')
  Color? get vehicleColor;

  @BuiltValueField(wireName: kDocumentReferenceField)
  DocumentReference? get ffRef;
  DocumentReference get reference => ffRef!;

  static void _initializeBuilder(VehicleRecordBuilder builder) => builder
    ..vehicleType = ''
    ..vehicleModel = ''
    ..vehicleBasePrice = 0
    ..vehicleYear = 0;

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('vehicle');

  static Stream<VehicleRecord> getDocument(DocumentReference ref) => ref
      .snapshots()
      .map((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  static Future<VehicleRecord> getDocumentOnce(DocumentReference ref) => ref
      .get()
      .then((s) => serializers.deserializeWith(serializer, serializedData(s))!);

  VehicleRecord._();
  factory VehicleRecord([void Function(VehicleRecordBuilder) updates]) =
      _$VehicleRecord;

  static VehicleRecord getDocumentFromData(
          Map<String, dynamic> data, DocumentReference reference) =>
      serializers.deserializeWith(serializer,
          {...mapFromFirestore(data), kDocumentReferenceField: reference})!;
}

Map<String, dynamic> createVehicleRecordData({
  String? vehicleType,
  String? vehicleModel,
  int? vehicleBasePrice,
  int? vehicleYear,
  Color? vehicleColor,
}) {
  final firestoreData = serializers.toFirestore(
    VehicleRecord.serializer,
    VehicleRecord(
      (v) => v
        ..vehicleType = vehicleType
        ..vehicleModel = vehicleModel
        ..vehicleBasePrice = vehicleBasePrice
        ..vehicleYear = vehicleYear
        ..vehicleColor = vehicleColor,
    ),
  );

  return firestoreData;
}
