import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EatRecord extends FirestoreRecord {
  EatRecord._(
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

  // "sugar" field.
  int? _sugar;
  int get sugar => _sugar ?? 0;
  bool hasSugar() => _sugar != null;

  // "sodium" field.
  int? _sodium;
  int get sodium => _sodium ?? 0;
  bool hasSodium() => _sodium != null;

  void _initializeFields() {
    _foodName = snapshotData['food_name'] as String?;
    _calories = castToType<int>(snapshotData['calories']);
    _sugar = castToType<int>(snapshotData['sugar']);
    _sodium = castToType<int>(snapshotData['sodium']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eat');

  static Stream<EatRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EatRecord.fromSnapshot(s));

  static Future<EatRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EatRecord.fromSnapshot(s));

  static EatRecord fromSnapshot(DocumentSnapshot snapshot) => EatRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EatRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EatRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EatRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EatRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEatRecordData({
  String? foodName,
  int? calories,
  int? sugar,
  int? sodium,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'food_name': foodName,
      'calories': calories,
      'sugar': sugar,
      'sodium': sodium,
    }.withoutNulls,
  );

  return firestoreData;
}

class EatRecordDocumentEquality implements Equality<EatRecord> {
  const EatRecordDocumentEquality();

  @override
  bool equals(EatRecord? e1, EatRecord? e2) {
    return e1?.foodName == e2?.foodName &&
        e1?.calories == e2?.calories &&
        e1?.sugar == e2?.sugar &&
        e1?.sodium == e2?.sodium;
  }

  @override
  int hash(EatRecord? e) => const ListEquality()
      .hash([e?.foodName, e?.calories, e?.sugar, e?.sodium]);

  @override
  bool isValidKey(Object? o) => o is EatRecord;
}
