import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class ClassResultsRecord extends FirestoreRecord {
  ClassResultsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "Total" field.
  double? _total;
  double get total => _total ?? 0.0;
  bool hasTotal() => _total != null;

  // "AI" field.
  int? _ai;
  int get ai => _ai ?? 0;
  bool hasAi() => _ai != null;

  // "OOP" field.
  int? _oop;
  int get oop => _oop ?? 0;
  bool hasOop() => _oop != null;

  // "ComputerSecurity" field.
  int? _computerSecurity;
  int get computerSecurity => _computerSecurity ?? 0;
  bool hasComputerSecurity() => _computerSecurity != null;

  // "Multimedia" field.
  int? _multimedia;
  int get multimedia => _multimedia ?? 0;
  bool hasMultimedia() => _multimedia != null;

  // "Result" field.
  String? _result;
  String get result => _result ?? '';
  bool hasResult() => _result != null;

  DocumentReference get parentReference => reference.parent.parent!;

  void _initializeFields() {
    _total = castToType<double>(snapshotData['Total']);
    _ai = castToType<int>(snapshotData['AI']);
    _oop = castToType<int>(snapshotData['OOP']);
    _computerSecurity = castToType<int>(snapshotData['ComputerSecurity']);
    _multimedia = castToType<int>(snapshotData['Multimedia']);
    _result = snapshotData['Result'] as String?;
  }

  static Query<Map<String, dynamic>> collection([DocumentReference? parent]) =>
      parent != null
          ? parent.collection('classResults')
          : FirebaseFirestore.instance.collectionGroup('classResults');

  static DocumentReference createDoc(DocumentReference parent) =>
      parent.collection('classResults').doc();

  static Stream<ClassResultsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => ClassResultsRecord.fromSnapshot(s));

  static Future<ClassResultsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => ClassResultsRecord.fromSnapshot(s));

  static ClassResultsRecord fromSnapshot(DocumentSnapshot snapshot) =>
      ClassResultsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static ClassResultsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      ClassResultsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'ClassResultsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is ClassResultsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createClassResultsRecordData({
  double? total,
  int? ai,
  int? oop,
  int? computerSecurity,
  int? multimedia,
  String? result,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'Total': total,
      'AI': ai,
      'OOP': oop,
      'ComputerSecurity': computerSecurity,
      'Multimedia': multimedia,
      'Result': result,
    }.withoutNulls,
  );

  return firestoreData;
}

class ClassResultsRecordDocumentEquality
    implements Equality<ClassResultsRecord> {
  const ClassResultsRecordDocumentEquality();

  @override
  bool equals(ClassResultsRecord? e1, ClassResultsRecord? e2) {
    return e1?.total == e2?.total &&
        e1?.ai == e2?.ai &&
        e1?.oop == e2?.oop &&
        e1?.computerSecurity == e2?.computerSecurity &&
        e1?.multimedia == e2?.multimedia &&
        e1?.result == e2?.result;
  }

  @override
  int hash(ClassResultsRecord? e) => const ListEquality().hash(
      [e?.total, e?.ai, e?.oop, e?.computerSecurity, e?.multimedia, e?.result]);

  @override
  bool isValidKey(Object? o) => o is ClassResultsRecord;
}
