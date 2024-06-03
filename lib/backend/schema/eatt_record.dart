import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class EattRecord extends FirestoreRecord {
  EattRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "food" field.
  String? _food;
  String get food => _food ?? '';
  bool hasFood() => _food != null;

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
    _food = snapshotData['food'] as String?;
    _calories = castToType<int>(snapshotData['calories']);
    _sugar = castToType<int>(snapshotData['sugar']);
    _sodium = castToType<int>(snapshotData['sodium']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('eatt');

  static Stream<EattRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => EattRecord.fromSnapshot(s));

  static Future<EattRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => EattRecord.fromSnapshot(s));

  static EattRecord fromSnapshot(DocumentSnapshot snapshot) => EattRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static EattRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      EattRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'EattRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is EattRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createEattRecordData({
  String? food,
  int? calories,
  int? sugar,
  int? sodium,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'food': food,
      'calories': calories,
      'sugar': sugar,
      'sodium': sodium,
    }.withoutNulls,
  );

  return firestoreData;
}

class EattRecordDocumentEquality implements Equality<EattRecord> {
  const EattRecordDocumentEquality();

  @override
  bool equals(EattRecord? e1, EattRecord? e2) {
    return e1?.food == e2?.food &&
        e1?.calories == e2?.calories &&
        e1?.sugar == e2?.sugar &&
        e1?.sodium == e2?.sodium;
  }

  @override
  int hash(EattRecord? e) =>
      const ListEquality().hash([e?.food, e?.calories, e?.sugar, e?.sodium]);

  @override
  bool isValidKey(Object? o) => o is EattRecord;
}
