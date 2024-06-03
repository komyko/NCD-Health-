import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class DrinkkkRecord extends FirestoreRecord {
  DrinkkkRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "name" field.
  String? _name;
  String get name => _name ?? '';
  bool hasName() => _name != null;

  // "cal" field.
  int? _cal;
  int get cal => _cal ?? 0;
  bool hasCal() => _cal != null;

  // "sugar" field.
  int? _sugar;
  int get sugar => _sugar ?? 0;
  bool hasSugar() => _sugar != null;

  void _initializeFields() {
    _name = snapshotData['name'] as String?;
    _cal = castToType<int>(snapshotData['cal']);
    _sugar = castToType<int>(snapshotData['sugar']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('drinkkk');

  static Stream<DrinkkkRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => DrinkkkRecord.fromSnapshot(s));

  static Future<DrinkkkRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => DrinkkkRecord.fromSnapshot(s));

  static DrinkkkRecord fromSnapshot(DocumentSnapshot snapshot) =>
      DrinkkkRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static DrinkkkRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      DrinkkkRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'DrinkkkRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is DrinkkkRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createDrinkkkRecordData({
  String? name,
  int? cal,
  int? sugar,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'name': name,
      'cal': cal,
      'sugar': sugar,
    }.withoutNulls,
  );

  return firestoreData;
}

class DrinkkkRecordDocumentEquality implements Equality<DrinkkkRecord> {
  const DrinkkkRecordDocumentEquality();

  @override
  bool equals(DrinkkkRecord? e1, DrinkkkRecord? e2) {
    return e1?.name == e2?.name && e1?.cal == e2?.cal && e1?.sugar == e2?.sugar;
  }

  @override
  int hash(DrinkkkRecord? e) =>
      const ListEquality().hash([e?.name, e?.cal, e?.sugar]);

  @override
  bool isValidKey(Object? o) => o is DrinkkkRecord;
}
