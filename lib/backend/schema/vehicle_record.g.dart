// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'vehicle_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<VehicleRecord> _$vehicleRecordSerializer =
    new _$VehicleRecordSerializer();

class _$VehicleRecordSerializer implements StructuredSerializer<VehicleRecord> {
  @override
  final Iterable<Type> types = const [VehicleRecord, _$VehicleRecord];
  @override
  final String wireName = 'VehicleRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, VehicleRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.vehicleType;
    if (value != null) {
      result
        ..add('vehicle_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleModel;
    if (value != null) {
      result
        ..add('vehicle_model')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.vehicleBasePrice;
    if (value != null) {
      result
        ..add('vehicle_base_price')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicleYear;
    if (value != null) {
      result
        ..add('vehicle_year')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
    }
    value = object.vehicleColor;
    if (value != null) {
      result
        ..add('vehicle_color')
        ..add(
            serializers.serialize(value, specifiedType: const FullType(Color)));
    }
    value = object.ffRef;
    if (value != null) {
      result
        ..add('Document__Reference__Field')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    return result;
  }

  @override
  VehicleRecord deserialize(
      Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new VehicleRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'vehicle_type':
          result.vehicleType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_model':
          result.vehicleModel = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'vehicle_base_price':
          result.vehicleBasePrice = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicle_year':
          result.vehicleYear = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
          break;
        case 'vehicle_color':
          result.vehicleColor = serializers.deserialize(value,
              specifiedType: const FullType(Color)) as Color?;
          break;
        case 'Document__Reference__Field':
          result.ffRef = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
      }
    }

    return result.build();
  }
}

class _$VehicleRecord extends VehicleRecord {
  @override
  final String? vehicleType;
  @override
  final String? vehicleModel;
  @override
  final int? vehicleBasePrice;
  @override
  final int? vehicleYear;
  @override
  final Color? vehicleColor;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$VehicleRecord([void Function(VehicleRecordBuilder)? updates]) =>
      (new VehicleRecordBuilder()..update(updates))._build();

  _$VehicleRecord._(
      {this.vehicleType,
      this.vehicleModel,
      this.vehicleBasePrice,
      this.vehicleYear,
      this.vehicleColor,
      this.ffRef})
      : super._();

  @override
  VehicleRecord rebuild(void Function(VehicleRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  VehicleRecordBuilder toBuilder() => new VehicleRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is VehicleRecord &&
        vehicleType == other.vehicleType &&
        vehicleModel == other.vehicleModel &&
        vehicleBasePrice == other.vehicleBasePrice &&
        vehicleYear == other.vehicleYear &&
        vehicleColor == other.vehicleColor &&
        ffRef == other.ffRef;
  }

  @override
  int get hashCode {
    return $jf($jc(
        $jc(
            $jc(
                $jc($jc($jc(0, vehicleType.hashCode), vehicleModel.hashCode),
                    vehicleBasePrice.hashCode),
                vehicleYear.hashCode),
            vehicleColor.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'VehicleRecord')
          ..add('vehicleType', vehicleType)
          ..add('vehicleModel', vehicleModel)
          ..add('vehicleBasePrice', vehicleBasePrice)
          ..add('vehicleYear', vehicleYear)
          ..add('vehicleColor', vehicleColor)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class VehicleRecordBuilder
    implements Builder<VehicleRecord, VehicleRecordBuilder> {
  _$VehicleRecord? _$v;

  String? _vehicleType;
  String? get vehicleType => _$this._vehicleType;
  set vehicleType(String? vehicleType) => _$this._vehicleType = vehicleType;

  String? _vehicleModel;
  String? get vehicleModel => _$this._vehicleModel;
  set vehicleModel(String? vehicleModel) => _$this._vehicleModel = vehicleModel;

  int? _vehicleBasePrice;
  int? get vehicleBasePrice => _$this._vehicleBasePrice;
  set vehicleBasePrice(int? vehicleBasePrice) =>
      _$this._vehicleBasePrice = vehicleBasePrice;

  int? _vehicleYear;
  int? get vehicleYear => _$this._vehicleYear;
  set vehicleYear(int? vehicleYear) => _$this._vehicleYear = vehicleYear;

  Color? _vehicleColor;
  Color? get vehicleColor => _$this._vehicleColor;
  set vehicleColor(Color? vehicleColor) => _$this._vehicleColor = vehicleColor;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  VehicleRecordBuilder() {
    VehicleRecord._initializeBuilder(this);
  }

  VehicleRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _vehicleType = $v.vehicleType;
      _vehicleModel = $v.vehicleModel;
      _vehicleBasePrice = $v.vehicleBasePrice;
      _vehicleYear = $v.vehicleYear;
      _vehicleColor = $v.vehicleColor;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(VehicleRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$VehicleRecord;
  }

  @override
  void update(void Function(VehicleRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  VehicleRecord build() => _build();

  _$VehicleRecord _build() {
    final _$result = _$v ??
        new _$VehicleRecord._(
            vehicleType: vehicleType,
            vehicleModel: vehicleModel,
            vehicleBasePrice: vehicleBasePrice,
            vehicleYear: vehicleYear,
            vehicleColor: vehicleColor,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
