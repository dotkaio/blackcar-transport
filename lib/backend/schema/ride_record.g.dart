// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'ride_record.dart';

// **************************************************************************
// BuiltValueGenerator
// **************************************************************************

Serializer<RideRecord> _$rideRecordSerializer = new _$RideRecordSerializer();

class _$RideRecordSerializer implements StructuredSerializer<RideRecord> {
  @override
  final Iterable<Type> types = const [RideRecord, _$RideRecord];
  @override
  final String wireName = 'RideRecord';

  @override
  Iterable<Object?> serialize(Serializers serializers, RideRecord object,
      {FullType specifiedType = FullType.unspecified}) {
    final result = <Object?>[];
    Object? value;
    value = object.rideId;
    if (value != null) {
      result
        ..add('ride_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.userId;
    if (value != null) {
      result
        ..add('user_id')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(
                DocumentReference, const [const FullType.nullable(Object)])));
    }
    value = object.pickupDate;
    if (value != null) {
      result
        ..add('pickup_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pickupTime;
    if (value != null) {
      result
        ..add('pickup_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.pickupAddress;
    if (value != null) {
      result
        ..add('pickup_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.dropoffDate;
    if (value != null) {
      result
        ..add('dropoff_date')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dropoffTime;
    if (value != null) {
      result
        ..add('dropoff_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(DateTime)));
    }
    value = object.dropoffAddress;
    if (value != null) {
      result
        ..add('dropoff_address')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideType;
    if (value != null) {
      result
        ..add('ride_type')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.rideTotalTime;
    if (value != null) {
      result
        ..add('ride_total_time')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(String)));
    }
    value = object.pickupLatlng;
    if (value != null) {
      result
        ..add('pickup_latlng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.dropoffLatlng;
    if (value != null) {
      result
        ..add('dropoff_latlng')
        ..add(serializers.serialize(value,
            specifiedType: const FullType(LatLng)));
    }
    value = object.total;
    if (value != null) {
      result
        ..add('total')
        ..add(serializers.serialize(value, specifiedType: const FullType(int)));
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
  RideRecord deserialize(Serializers serializers, Iterable<Object?> serialized,
      {FullType specifiedType = FullType.unspecified}) {
    final result = new RideRecordBuilder();

    final iterator = serialized.iterator;
    while (iterator.moveNext()) {
      final key = iterator.current! as String;
      iterator.moveNext();
      final Object? value = iterator.current;
      switch (key) {
        case 'ride_id':
          result.rideId = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'user_id':
          result.userId = serializers.deserialize(value,
              specifiedType: const FullType(DocumentReference, const [
                const FullType.nullable(Object)
              ])) as DocumentReference<Object?>?;
          break;
        case 'pickup_date':
          result.pickupDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'pickup_time':
          result.pickupTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'pickup_address':
          result.pickupAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'dropoff_date':
          result.dropoffDate = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'dropoff_time':
          result.dropoffTime = serializers.deserialize(value,
              specifiedType: const FullType(DateTime)) as DateTime?;
          break;
        case 'dropoff_address':
          result.dropoffAddress = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_type':
          result.rideType = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'ride_total_time':
          result.rideTotalTime = serializers.deserialize(value,
              specifiedType: const FullType(String)) as String?;
          break;
        case 'pickup_latlng':
          result.pickupLatlng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'dropoff_latlng':
          result.dropoffLatlng = serializers.deserialize(value,
              specifiedType: const FullType(LatLng)) as LatLng?;
          break;
        case 'total':
          result.total = serializers.deserialize(value,
              specifiedType: const FullType(int)) as int?;
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

class _$RideRecord extends RideRecord {
  @override
  final String? rideId;
  @override
  final DocumentReference<Object?>? userId;
  @override
  final DateTime? pickupDate;
  @override
  final DateTime? pickupTime;
  @override
  final String? pickupAddress;
  @override
  final DateTime? dropoffDate;
  @override
  final DateTime? dropoffTime;
  @override
  final String? dropoffAddress;
  @override
  final String? rideType;
  @override
  final String? rideTotalTime;
  @override
  final LatLng? pickupLatlng;
  @override
  final LatLng? dropoffLatlng;
  @override
  final int? total;
  @override
  final DocumentReference<Object?>? ffRef;

  factory _$RideRecord([void Function(RideRecordBuilder)? updates]) =>
      (new RideRecordBuilder()..update(updates))._build();

  _$RideRecord._(
      {this.rideId,
      this.userId,
      this.pickupDate,
      this.pickupTime,
      this.pickupAddress,
      this.dropoffDate,
      this.dropoffTime,
      this.dropoffAddress,
      this.rideType,
      this.rideTotalTime,
      this.pickupLatlng,
      this.dropoffLatlng,
      this.total,
      this.ffRef})
      : super._();

  @override
  RideRecord rebuild(void Function(RideRecordBuilder) updates) =>
      (toBuilder()..update(updates)).build();

  @override
  RideRecordBuilder toBuilder() => new RideRecordBuilder()..replace(this);

  @override
  bool operator ==(Object other) {
    if (identical(other, this)) return true;
    return other is RideRecord &&
        rideId == other.rideId &&
        userId == other.userId &&
        pickupDate == other.pickupDate &&
        pickupTime == other.pickupTime &&
        pickupAddress == other.pickupAddress &&
        dropoffDate == other.dropoffDate &&
        dropoffTime == other.dropoffTime &&
        dropoffAddress == other.dropoffAddress &&
        rideType == other.rideType &&
        rideTotalTime == other.rideTotalTime &&
        pickupLatlng == other.pickupLatlng &&
        dropoffLatlng == other.dropoffLatlng &&
        total == other.total &&
        ffRef == other.ffRef;
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
                                $jc(
                                    $jc(
                                        $jc(
                                            $jc(
                                                $jc(
                                                    $jc($jc(0, rideId.hashCode),
                                                        userId.hashCode),
                                                    pickupDate.hashCode),
                                                pickupTime.hashCode),
                                            pickupAddress.hashCode),
                                        dropoffDate.hashCode),
                                    dropoffTime.hashCode),
                                dropoffAddress.hashCode),
                            rideType.hashCode),
                        rideTotalTime.hashCode),
                    pickupLatlng.hashCode),
                dropoffLatlng.hashCode),
            total.hashCode),
        ffRef.hashCode));
  }

  @override
  String toString() {
    return (newBuiltValueToStringHelper(r'RideRecord')
          ..add('rideId', rideId)
          ..add('userId', userId)
          ..add('pickupDate', pickupDate)
          ..add('pickupTime', pickupTime)
          ..add('pickupAddress', pickupAddress)
          ..add('dropoffDate', dropoffDate)
          ..add('dropoffTime', dropoffTime)
          ..add('dropoffAddress', dropoffAddress)
          ..add('rideType', rideType)
          ..add('rideTotalTime', rideTotalTime)
          ..add('pickupLatlng', pickupLatlng)
          ..add('dropoffLatlng', dropoffLatlng)
          ..add('total', total)
          ..add('ffRef', ffRef))
        .toString();
  }
}

class RideRecordBuilder implements Builder<RideRecord, RideRecordBuilder> {
  _$RideRecord? _$v;

  String? _rideId;
  String? get rideId => _$this._rideId;
  set rideId(String? rideId) => _$this._rideId = rideId;

  DocumentReference<Object?>? _userId;
  DocumentReference<Object?>? get userId => _$this._userId;
  set userId(DocumentReference<Object?>? userId) => _$this._userId = userId;

  DateTime? _pickupDate;
  DateTime? get pickupDate => _$this._pickupDate;
  set pickupDate(DateTime? pickupDate) => _$this._pickupDate = pickupDate;

  DateTime? _pickupTime;
  DateTime? get pickupTime => _$this._pickupTime;
  set pickupTime(DateTime? pickupTime) => _$this._pickupTime = pickupTime;

  String? _pickupAddress;
  String? get pickupAddress => _$this._pickupAddress;
  set pickupAddress(String? pickupAddress) =>
      _$this._pickupAddress = pickupAddress;

  DateTime? _dropoffDate;
  DateTime? get dropoffDate => _$this._dropoffDate;
  set dropoffDate(DateTime? dropoffDate) => _$this._dropoffDate = dropoffDate;

  DateTime? _dropoffTime;
  DateTime? get dropoffTime => _$this._dropoffTime;
  set dropoffTime(DateTime? dropoffTime) => _$this._dropoffTime = dropoffTime;

  String? _dropoffAddress;
  String? get dropoffAddress => _$this._dropoffAddress;
  set dropoffAddress(String? dropoffAddress) =>
      _$this._dropoffAddress = dropoffAddress;

  String? _rideType;
  String? get rideType => _$this._rideType;
  set rideType(String? rideType) => _$this._rideType = rideType;

  String? _rideTotalTime;
  String? get rideTotalTime => _$this._rideTotalTime;
  set rideTotalTime(String? rideTotalTime) =>
      _$this._rideTotalTime = rideTotalTime;

  LatLng? _pickupLatlng;
  LatLng? get pickupLatlng => _$this._pickupLatlng;
  set pickupLatlng(LatLng? pickupLatlng) => _$this._pickupLatlng = pickupLatlng;

  LatLng? _dropoffLatlng;
  LatLng? get dropoffLatlng => _$this._dropoffLatlng;
  set dropoffLatlng(LatLng? dropoffLatlng) =>
      _$this._dropoffLatlng = dropoffLatlng;

  int? _total;
  int? get total => _$this._total;
  set total(int? total) => _$this._total = total;

  DocumentReference<Object?>? _ffRef;
  DocumentReference<Object?>? get ffRef => _$this._ffRef;
  set ffRef(DocumentReference<Object?>? ffRef) => _$this._ffRef = ffRef;

  RideRecordBuilder() {
    RideRecord._initializeBuilder(this);
  }

  RideRecordBuilder get _$this {
    final $v = _$v;
    if ($v != null) {
      _rideId = $v.rideId;
      _userId = $v.userId;
      _pickupDate = $v.pickupDate;
      _pickupTime = $v.pickupTime;
      _pickupAddress = $v.pickupAddress;
      _dropoffDate = $v.dropoffDate;
      _dropoffTime = $v.dropoffTime;
      _dropoffAddress = $v.dropoffAddress;
      _rideType = $v.rideType;
      _rideTotalTime = $v.rideTotalTime;
      _pickupLatlng = $v.pickupLatlng;
      _dropoffLatlng = $v.dropoffLatlng;
      _total = $v.total;
      _ffRef = $v.ffRef;
      _$v = null;
    }
    return this;
  }

  @override
  void replace(RideRecord other) {
    ArgumentError.checkNotNull(other, 'other');
    _$v = other as _$RideRecord;
  }

  @override
  void update(void Function(RideRecordBuilder)? updates) {
    if (updates != null) updates(this);
  }

  @override
  RideRecord build() => _build();

  _$RideRecord _build() {
    final _$result = _$v ??
        new _$RideRecord._(
            rideId: rideId,
            userId: userId,
            pickupDate: pickupDate,
            pickupTime: pickupTime,
            pickupAddress: pickupAddress,
            dropoffDate: dropoffDate,
            dropoffTime: dropoffTime,
            dropoffAddress: dropoffAddress,
            rideType: rideType,
            rideTotalTime: rideTotalTime,
            pickupLatlng: pickupLatlng,
            dropoffLatlng: dropoffLatlng,
            total: total,
            ffRef: ffRef);
    replace(_$result);
    return _$result;
  }
}

// ignore_for_file: always_put_control_body_on_new_line,always_specify_types,annotate_overrides,avoid_annotating_with_dynamic,avoid_as,avoid_catches_without_on_clauses,avoid_returning_this,deprecated_member_use_from_same_package,lines_longer_than_80_chars,no_leading_underscores_for_local_identifiers,omit_local_variable_types,prefer_expression_function_bodies,sort_constructors_first,test_types_in_equals,unnecessary_const,unnecessary_new,unnecessary_lambdas
