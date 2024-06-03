// ignore_for_file: unnecessary_getters_setters

import 'package:cloud_firestore/cloud_firestore.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ProfileeeStruct extends FFFirebaseStruct {
  ProfileeeStruct({
    int? age1,
    String? gender,
    int? tall,
    int? weight1,
    String? congential1,
    bool? al1,
    bool? cig1,
    FirestoreUtilData firestoreUtilData = const FirestoreUtilData(),
  })  : _age1 = age1,
        _gender = gender,
        _tall = tall,
        _weight1 = weight1,
        _congential1 = congential1,
        _al1 = al1,
        _cig1 = cig1,
        super(firestoreUtilData);

  // "age1" field.
  int? _age1;
  int get age1 => _age1 ?? 0;
  set age1(int? val) => _age1 = val;
  void incrementAge1(int amount) => _age1 = age1 + amount;
  bool hasAge1() => _age1 != null;

  // "gender" field.
  String? _gender;
  String get gender => _gender ?? '';
  set gender(String? val) => _gender = val;
  bool hasGender() => _gender != null;

  // "tall" field.
  int? _tall;
  int get tall => _tall ?? 0;
  set tall(int? val) => _tall = val;
  void incrementTall(int amount) => _tall = tall + amount;
  bool hasTall() => _tall != null;

  // "weight1" field.
  int? _weight1;
  int get weight1 => _weight1 ?? 0;
  set weight1(int? val) => _weight1 = val;
  void incrementWeight1(int amount) => _weight1 = weight1 + amount;
  bool hasWeight1() => _weight1 != null;

  // "congential1" field.
  String? _congential1;
  String get congential1 => _congential1 ?? '';
  set congential1(String? val) => _congential1 = val;
  bool hasCongential1() => _congential1 != null;

  // "al1" field.
  bool? _al1;
  bool get al1 => _al1 ?? false;
  set al1(bool? val) => _al1 = val;
  bool hasAl1() => _al1 != null;

  // "cig1" field.
  bool? _cig1;
  bool get cig1 => _cig1 ?? false;
  set cig1(bool? val) => _cig1 = val;
  bool hasCig1() => _cig1 != null;

  static ProfileeeStruct fromMap(Map<String, dynamic> data) => ProfileeeStruct(
        age1: castToType<int>(data['age1']),
        gender: data['gender'] as String?,
        tall: castToType<int>(data['tall']),
        weight1: castToType<int>(data['weight1']),
        congential1: data['congential1'] as String?,
        al1: data['al1'] as bool?,
        cig1: data['cig1'] as bool?,
      );

  static ProfileeeStruct? maybeFromMap(dynamic data) => data is Map
      ? ProfileeeStruct.fromMap(data.cast<String, dynamic>())
      : null;

  Map<String, dynamic> toMap() => {
        'age1': _age1,
        'gender': _gender,
        'tall': _tall,
        'weight1': _weight1,
        'congential1': _congential1,
        'al1': _al1,
        'cig1': _cig1,
      }.withoutNulls;

  @override
  Map<String, dynamic> toSerializableMap() => {
        'age1': serializeParam(
          _age1,
          ParamType.int,
        ),
        'gender': serializeParam(
          _gender,
          ParamType.String,
        ),
        'tall': serializeParam(
          _tall,
          ParamType.int,
        ),
        'weight1': serializeParam(
          _weight1,
          ParamType.int,
        ),
        'congential1': serializeParam(
          _congential1,
          ParamType.String,
        ),
        'al1': serializeParam(
          _al1,
          ParamType.bool,
        ),
        'cig1': serializeParam(
          _cig1,
          ParamType.bool,
        ),
      }.withoutNulls;

  static ProfileeeStruct fromSerializableMap(Map<String, dynamic> data) =>
      ProfileeeStruct(
        age1: deserializeParam(
          data['age1'],
          ParamType.int,
          false,
        ),
        gender: deserializeParam(
          data['gender'],
          ParamType.String,
          false,
        ),
        tall: deserializeParam(
          data['tall'],
          ParamType.int,
          false,
        ),
        weight1: deserializeParam(
          data['weight1'],
          ParamType.int,
          false,
        ),
        congential1: deserializeParam(
          data['congential1'],
          ParamType.String,
          false,
        ),
        al1: deserializeParam(
          data['al1'],
          ParamType.bool,
          false,
        ),
        cig1: deserializeParam(
          data['cig1'],
          ParamType.bool,
          false,
        ),
      );

  @override
  String toString() => 'ProfileeeStruct(${toMap()})';

  @override
  bool operator ==(Object other) {
    return other is ProfileeeStruct &&
        age1 == other.age1 &&
        gender == other.gender &&
        tall == other.tall &&
        weight1 == other.weight1 &&
        congential1 == other.congential1 &&
        al1 == other.al1 &&
        cig1 == other.cig1;
  }

  @override
  int get hashCode => const ListEquality()
      .hash([age1, gender, tall, weight1, congential1, al1, cig1]);
}

ProfileeeStruct createProfileeeStruct({
  int? age1,
  String? gender,
  int? tall,
  int? weight1,
  String? congential1,
  bool? al1,
  bool? cig1,
  Map<String, dynamic> fieldValues = const {},
  bool clearUnsetFields = true,
  bool create = false,
  bool delete = false,
}) =>
    ProfileeeStruct(
      age1: age1,
      gender: gender,
      tall: tall,
      weight1: weight1,
      congential1: congential1,
      al1: al1,
      cig1: cig1,
      firestoreUtilData: FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
        delete: delete,
        fieldValues: fieldValues,
      ),
    );

ProfileeeStruct? updateProfileeeStruct(
  ProfileeeStruct? profileee, {
  bool clearUnsetFields = true,
  bool create = false,
}) =>
    profileee
      ?..firestoreUtilData = FirestoreUtilData(
        clearUnsetFields: clearUnsetFields,
        create: create,
      );

void addProfileeeStructData(
  Map<String, dynamic> firestoreData,
  ProfileeeStruct? profileee,
  String fieldName, [
  bool forFieldValue = false,
]) {
  firestoreData.remove(fieldName);
  if (profileee == null) {
    return;
  }
  if (profileee.firestoreUtilData.delete) {
    firestoreData[fieldName] = FieldValue.delete();
    return;
  }
  final clearFields =
      !forFieldValue && profileee.firestoreUtilData.clearUnsetFields;
  if (clearFields) {
    firestoreData[fieldName] = <String, dynamic>{};
  }
  final profileeeData = getProfileeeFirestoreData(profileee, forFieldValue);
  final nestedData = profileeeData.map((k, v) => MapEntry('$fieldName.$k', v));

  final mergeFields = profileee.firestoreUtilData.create || clearFields;
  firestoreData
      .addAll(mergeFields ? mergeNestedFields(nestedData) : nestedData);
}

Map<String, dynamic> getProfileeeFirestoreData(
  ProfileeeStruct? profileee, [
  bool forFieldValue = false,
]) {
  if (profileee == null) {
    return {};
  }
  final firestoreData = mapToFirestore(profileee.toMap());

  // Add any Firestore field values
  profileee.firestoreUtilData.fieldValues
      .forEach((k, v) => firestoreData[k] = v);

  return forFieldValue ? mergeNestedFields(firestoreData) : firestoreData;
}

List<Map<String, dynamic>> getProfileeeListFirestoreData(
  List<ProfileeeStruct>? profileees,
) =>
    profileees?.map((e) => getProfileeeFirestoreData(e, true)).toList() ?? [];
