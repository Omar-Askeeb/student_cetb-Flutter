import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class NewsRecord extends FirestoreRecord {
  NewsRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "createAt" field.
  DateTime? _createAt;
  DateTime? get createAt => _createAt;
  bool hasCreateAt() => _createAt != null;

  // "description" field.
  String? _description;
  String get description => _description ?? '';
  bool hasDescription() => _description != null;

  // "image" field.
  String? _image;
  String get image => _image ?? '';
  bool hasImage() => _image != null;

  // "title" field.
  String? _title;
  String get title => _title ?? '';
  bool hasTitle() => _title != null;

  void _initializeFields() {
    _createAt = snapshotData['createAt'] as DateTime?;
    _description = snapshotData['description'] as String?;
    _image = snapshotData['image'] as String?;
    _title = snapshotData['title'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('news');

  static Stream<NewsRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => NewsRecord.fromSnapshot(s));

  static Future<NewsRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => NewsRecord.fromSnapshot(s));

  static NewsRecord fromSnapshot(DocumentSnapshot snapshot) => NewsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static NewsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      NewsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'NewsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is NewsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createNewsRecordData({
  DateTime? createAt,
  String? description,
  String? image,
  String? title,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'createAt': createAt,
      'description': description,
      'image': image,
      'title': title,
    }.withoutNulls,
  );

  return firestoreData;
}

class NewsRecordDocumentEquality implements Equality<NewsRecord> {
  const NewsRecordDocumentEquality();

  @override
  bool equals(NewsRecord? e1, NewsRecord? e2) {
    return e1?.createAt == e2?.createAt &&
        e1?.description == e2?.description &&
        e1?.image == e2?.image &&
        e1?.title == e2?.title;
  }

  @override
  int hash(NewsRecord? e) => const ListEquality()
      .hash([e?.createAt, e?.description, e?.image, e?.title]);

  @override
  bool isValidKey(Object? o) => o is NewsRecord;
}
