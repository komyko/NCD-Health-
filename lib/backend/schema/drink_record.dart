import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrinkRecord extends FirestoreRecord {
  DrinkRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "food_name" field.
  String? _foodName;
  String get foodName => _foodName ?? '';
  bool hasFoodName() => _foodName != null;

  // "calories" field.
  int? _calories;
  int get calories => _calories ?? 0;
  bool hasCalories() => _calories != null;

  void _initializeFields() {
    _foodName = snapshotData['food_name'] as String?;
    _calories = castToType<int>(snapshotData['calories']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drink');

  static Stream<DrinkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DrinkRecord.fromSnapshot(s));

  static Future<DrinkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DrinkRecord.fromSnapshot(s));

  static DrinkRecord fromSnapshot(DocumentSnapshot snapshot) => DrinkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DrinkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DrinkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DrinkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DrinkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDrinkRecordData({
  String? foodName,
  int? calories,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'food_name': foodName,
      'calories': calories,
    }.withoutNulls,
  );

  return firestoreData;
}

class DrinkRecordDocumentEquality implements Equality<DrinkRecord> {
  const DrinkRecordDocumentEquality();

  @override
  bool equals(DrinkRecord? e1, DrinkRecord? e2) {
    return e1?.foodName == e2?.foodName && e1?.calories == e2?.calories;
  }

  @override
  int hash(DrinkRecord? e) =>
      const ListEquality().hash([e?.foodName, e?.calories]);

  @override
  bool isValidKey(Object? o) => o is DrinkRecord;
}
