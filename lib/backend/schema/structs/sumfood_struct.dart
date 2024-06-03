// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class SumfoodStruct extends FFFirebaseStruct {
  SumfoodStruct({
    int? sumcal,
    int? sumexercise,
    int? sumsleep,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sumcal = sumcal,
        _sumexercise = sumexercise,
        _sumsleep = sumsleep,
        super(firestoreUtilData);

  // "sumcal" field.
  int? _sumcal;
  int get sumcal => _sumcal ?? 0;
  set sumcal(int? val) => _sumcal = val;
  void incrementSumcal(int amount) => _sumcal = sumcal + amount;
  bool hasSumcal() => _sumcal != null;

  // "sumexercise" field.
  int? _sumexercise;
  int get sumexercise => _sumexercise ?? 0;
  set sumexercise(int? val) => _sumexercise = val;
  void incrementSumexercise(int amount) => _sumexercise = sumexercise + amount;
  bool hasSumexercise() => _sumexercise != null;

  // "sumsleep" field.
  int? _sumsleep;
  int get sumsleep => _sumsleep ?? 0;
  set sumsleep(int? val) => _sumsleep = val;
  void incrementSumsleep(int amount) => _sumsleep = sumsleep + amount;
  bool hasSumsleep() => _sumsleep != null;

  static SumfoodStruct fromMap(Map<String, dynamic> data) => SumfoodStruct(
        sumcal: castToType<int>(data['sumcal']),
        sumexercise: castToType<int>(data['sumexercise']),
        sumsleep: castToType<int>(data['sumsleep']),
      );

  static SumfoodStruct? maybeFromMap(dynamic data) =>
      data is Map ? SumfoodStruct.fromMap(data.cast<String, dynamic>()) : null;

  Map<String, dynamic> toMap() => {
        'sumcal': _sumcal,
        'sumexercise': _sumexercise,
        'sumsleep': _sumsleep,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sumcal': serializeParam(
          _sumcal,
          ParamType.int,
        ),
        'sumexercise': serializeParam(
          _sumexercise,
          ParamType.int,
        ),
        'sumsleep': serializeParam(
          _sumsleep,
          ParamType.int,
        ),
      }.withoutNulls;

  static SumfoodStruct fromSerializableMap(Map<String, dynamic> data) =>
      SumfoodStruct(
        sumcal: deserializeParam(
          data['sumcal'],
          ParamType.int,
          false,
        ),
        sumexercise: deserializeParam(
          data['sumexercise'],
          ParamType.int,
          false,
        ),
        sumsleep: deserializeParam(
          data['sumsleep'],
          ParamType.int,
          false,
        ),
      );

  @override
  String toString() => 'SumfoodStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is SumfoodStruct &&
        sumcal == other.sumcal &&
        sumexercise == other.sumexercise &&
        sumsleep == other.sumsleep;
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sumcal, sumexercise, sumsleep]);
}

SumfoodStruct createSumfoodStruct({
  int? sumcal,
  int? sumexercise,
  int? sumsleep,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    SumfoodStruct(
      sumcal: sumcal,
      sumexercise: sumexercise,
      sumsleep: sumsleep,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

SumfoodStruct? updateSumfoodStruct(
  SumfoodStruct? sumfood, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    sumfood
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addSumfoodStructData(
  Map<String, dynamic> firestoreData,
  SumfoodStruct? sumfood,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (sumfood == null) {
    return;
  }
  if (sumfood.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && sumfood.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final sumfoodData = getSumfoodFirestoreData(sumfood, forFieldValue);
  final nestedData = sumfoodData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = sumfood.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getSumfoodFirestoreData(
  SumfoodStruct? sumfood, [
  bool forFieldValue = false,
]) {
  if (sumfood == null) {
    return {};
  }
  final firestoreData = mapToFirestore(sumfood.toMap());

  // Add any Firestore field values
  sumfood.firestoreUtilData.fieldValues.forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getSumfoodListFirestoreData(
  List<SumfoodStruct>? sumfoods,
) =>
    sumfoods?.map((e) => getSumfoodFirestoreData(e, true)).toList() ?? [];
