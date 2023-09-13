import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';
import '/backend/schema/util/schema_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class LibraryRecord extends FirestoreRecord {
  LibraryRecord._(
    DocumentReference reference,
    Map<String, dynamic> data,
  ) : super(reference, data) {
    _initializeFields();
  }

  // "ID" field.
  String? _id;
  String get id => _id ?? '';
  bool hasId() => _id != null;

  // "author" field.
  String? _author;
  String get author => _author ?? '';
  bool hasAuthor() => _author != null;

  // "book_name" field.
  String? _bookName;
  String get bookName => _bookName ?? '';
  bool hasBookName() => _bookName != null;

  // "copies" field.
  int? _copies;
  int get copies => _copies ?? 0;
  bool hasCopies() => _copies != null;

  // "edition" field.
  String? _edition;
  String get edition => _edition ?? '';
  bool hasEdition() => _edition != null;

  // "cover" field.
  String? _cover;
  String get cover => _cover ?? '';
  bool hasCover() => _cover != null;

  void _initializeFields() {
    _id = snapshotData['ID'] as String?;
    _author = snapshotData['author'] as String?;
    _bookName = snapshotData['book_name'] as String?;
    _copies = castToType<int>(snapshotData['copies']);
    _edition = snapshotData['edition'] as String?;
    _cover = snapshotData['cover'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('library');

  static Stream<LibraryRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => LibraryRecord.fromSnapshot(s));

  static Future<LibraryRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => LibraryRecord.fromSnapshot(s));

  static LibraryRecord fromSnapshot(DocumentSnapshot snapshot) =>
      LibraryRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static LibraryRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      LibraryRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'LibraryRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is LibraryRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createLibraryRecordData({
  String? id,
  String? author,
  String? bookName,
  int? copies,
  String? edition,
  String? cover,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'ID': id,
      'author': author,
      'book_name': bookName,
      'copies': copies,
      'edition': edition,
      'cover': cover,
    }.withoutNulls,
  );

  return firestoreData;
}

class LibraryRecordDocumentEquality implements Equality<LibraryRecord> {
  const LibraryRecordDocumentEquality();

  @override
  bool equals(LibraryRecord? e1, LibraryRecord? e2) {
    return e1?.id == e2?.id &&
        e1?.author == e2?.author &&
        e1?.bookName == e2?.bookName &&
        e1?.copies == e2?.copies &&
        e1?.edition == e2?.edition &&
        e1?.cover == e2?.cover;
  }

  @override
  int hash(LibraryRecord? e) => const ListEquality()
      .hash([e?.id, e?.author, e?.bookName, e?.copies, e?.edition, e?.cover]);

  @override
  bool isValidKey(Object? o) => o is LibraryRecord;
}
