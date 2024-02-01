import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class BiologyRecord extends FirestoreRecord {
  BiologyRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "content" field.
  String? _content;
  String get content => _content ?? '';
  bool hasContent() => _content != null;

  // "sub_content" field.
  String? _subContent;
  String get subContent => _subContent ?? '';
  bool hasSubContent() => _subContent != null;

  // "topic" field.
  String? _topic;
  String get topic => _topic ?? '';
  bool hasTopic() => _topic != null;

  // "order" field.
  int? _order;
  int get order => _order ?? 0;
  bool hasOrder() => _order != null;

  void _initializeFields() {
    _content = snapshotData['content'] as String?;
    _subContent = snapshotData['sub_content'] as String?;
    _topic = snapshotData['topic'] as String?;
    _order = castToType<int>(snapshotData['order']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('Biology');

  static Stream<BiologyRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => BiologyRecord.fromSnapshot(s));

  static Future<BiologyRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => BiologyRecord.fromSnapshot(s));

  static BiologyRecord fromSnapshot(DocumentSnapshot snapshot) =>
      BiologyRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static BiologyRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      BiologyRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'BiologyRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is BiologyRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createBiologyRecordData({
  String? content,
  String? subContent,
  String? topic,
  int? order,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'content': content,
      'sub_content': subContent,
      'topic': topic,
      'order': order,
    }.withoutNulls,
  );

  return firestoreData;
}

class BiologyRecordDocumentEquality implements Equality<BiologyRecord> {
  const BiologyRecordDocumentEquality();

  @override
  bool equals(BiologyRecord? e1, BiologyRecord? e2) {
    return e1?.content == e2?.content &&
        e1?.subContent == e2?.subContent &&
        e1?.topic == e2?.topic &&
        e1?.order == e2?.order;
  }

  @override
  int hash(BiologyRecord? e) => const ListEquality()
      .hash([e?.content, e?.subContent, e?.topic, e?.order]);

  @override
  bool isValidKey(Object? o) => o is BiologyRecord;
}
