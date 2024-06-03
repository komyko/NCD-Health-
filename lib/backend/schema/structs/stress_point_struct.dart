// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class StressPointStruct extends FFFirebaseStruct {
  StressPointStruct({
    int? sumPoint,
    Color? number1HoverColor,
    List<String>? stress1pic,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _sumPoint = sumPoint,
        _number1HoverColor = number1HoverColor,
        _stress1pic = stress1pic,
        super(firestoreUtilData);

  // "sumPoint" field.
  int? _sumPoint;
  int get sumPoint => _sumPoint ?? 0;
  set sumPoint(int? val) => _sumPoint = val;
  void incrementSumPoint(int amount) => _sumPoint = sumPoint + amount;
  bool hasSumPoint() => _sumPoint != null;

  // "Number1_HoverColor" field.
  Color? _number1HoverColor;
  Color get number1HoverColor => _number1HoverColor ?? const Color(0x31DB2E2E);
  set number1HoverColor(Color? val) => _number1HoverColor = val;
  bool hasNumber1HoverColor() => _number1HoverColor != null;

  // "stress1pic" field.
  List<String>? _stress1pic;
  List<String> get stress1pic => _stress1pic ?? const [];
  set stress1pic(List<String>? val) => _stress1pic = val;
  void updateStress1pic(Function(List<String>) updateFn) =>
      updateFn(_stress1pic ??= []);
  bool hasStress1pic() => _stress1pic != null;

  static StressPointStruct fromMap(Map<String, dynamic> data) =>
      StressPointStruct(
        sumPoint: castToType<int>(data['sumPoint']),
        number1HoverColor: getSchemaColor(data['Number1_HoverColor']),
        stress1pic: getDataList(data['stress1pic']),
      );

  static StressPointStruct? maybeFromMap(dynamic data) => data is Map
      ? StressPointStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'sumPoint': _sumPoint,
        'Number1_HoverColor': _number1HoverColor,
        'stress1pic': _stress1pic,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'sumPoint': serializeParam(
          _sumPoint,
          ParamType.int,
        ),
        'Number1_HoverColor': serializeParam(
          _number1HoverColor,
          ParamType.Color,
        ),
        'stress1pic': serializeParam(
          _stress1pic,
          ParamType.String,
          true,
        ),
      }.withoutNulls;

  static StressPointStruct fromSerializableMap(Map<String, dynamic> data) =>
      StressPointStruct(
        sumPoint: deserializeParam(
          data['sumPoint'],
          ParamType.int,
          false,
        ),
        number1HoverColor: deserializeParam(
          data['Number1_HoverColor'],
          ParamType.Color,
          false,
        ),
        stress1pic: deserializeParam<String>(
          data['stress1pic'],
          ParamType.String,
          true,
        ),
      );

  @override
  String toString() => 'StressPointStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    const listEquality = ListEquality();
    return other is StressPointStruct &&
        sumPoint == other.sumPoint &&
        number1HoverColor == other.number1HoverColor &&
        listEquality.equals(stress1pic, other.stress1pic);
  }

  @override
  int get hashCode =>
      const ListEquality().hash([sumPoint, number1HoverColor, stress1pic]);
}

StressPointStruct createStressPointStruct({
  int? sumPoint,
  Color? number1HoverColor,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    StressPointStruct(
      sumPoint: sumPoint,
      number1HoverColor: number1HoverColor,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

StressPointStruct? updateStressPointStruct(
  StressPointStruct? stressPoint, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    stressPoint
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addStressPointStructData(
  Map<String, dynamic> firestoreData,
  StressPointStruct? stressPoint,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (stressPoint == null) {
    return;
  }
  if (stressPoint.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && stressPoint.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final stressPointData =
      getStressPointFirestoreData(stressPoint, forFieldValue);
  final nestedData =
      stressPointData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = stressPoint.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getStressPointFirestoreData(
  StressPointStruct? stressPoint, [
  bool forFieldValue = false,
]) {
  if (stressPoint == null) {
    return {};
  }
  final firestoreData = mapToFirestore(stressPoint.toMap());

  // Add any Firestore field values
  stressPoint.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getStressPointListFirestoreData(
  List<StressPointStruct>? stressPoints,
) =>
    stressPoints?.map((e) => getStressPointFirestoreData(e, true)).toList() ??
    [];
