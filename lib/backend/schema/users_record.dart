import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';
import '/flutter_flow/flutter_flow_util.dart';

class UsersRecord extends FirestoreRecord {
  UsersRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "email" field.
  String? _email;
  String get email => _email ?? '';
  bool hasEmail() => _email != null;

  // "display_name" field.
  String? _displayName;
  String get displayName => _displayName ?? '';
  bool hasDisplayName() => _displayName != null;

  // "created_time" field.
  DateTime? _createdTime;
  DateTime? get createdTime => _createdTime;
  bool hasCreatedTime() => _createdTime != null;

  // "edited_time" field.
  DateTime? _editedTime;
  DateTime? get editedTime => _editedTime;
  bool hasEditedTime() => _editedTime != null;

  // "user_name" field.
  String? _userName;
  String get userName => _userName ?? '';
  bool hasUserName() => _userName != null;

  // "correct_streak" field.
  int? _correctStreak;
  int get correctStreak => _correctStreak ?? 0;
  bool hasCorrectStreak() => _correctStreak != null;

  // "day_streak" field.
  int? _dayStreak;
  int get dayStreak => _dayStreak ?? 0;
  bool hasDayStreak() => _dayStreak != null;

  // "xp" field.
  int? _xp;
  int get xp => _xp ?? 0;
  bool hasXp() => _xp != null;

  void _initializeFields() {
    _email = snapshotData['email'] as String?;
    _displayName = snapshotData['display_name'] as String?;
    _createdTime = snapshotData['created_time'] as DateTime?;
    _editedTime = snapshotData['edited_time'] as DateTime?;
    _userName = snapshotData['user_name'] as String?;
    _correctStreak = castToType<int>(snapshotData['correct_streak']);
    _dayStreak = castToType<int>(snapshotData['day_streak']);
    _xp = castToType<int>(snapshotData['xp']);
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('users');

  static Stream<UsersRecord> getDocument(DocumentReference ref) =>
      ref.snapshots().map((s) => UsersRecord.fromSnapshot(s));

  static Future<UsersRecord> getDocumentOnce(DocumentReference ref) =>
      ref.get().then((s) => UsersRecord.fromSnapshot(s));

  static UsersRecord fromSnapshot(DocumentSnapshot snapshot) => UsersRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static UsersRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      UsersRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'UsersRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is UsersRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createUsersRecordData({
  String? email,
  String? displayName,
  DateTime? createdTime,
  DateTime? editedTime,
  String? userName,
  int? correctStreak,
  int? dayStreak,
  int? xp,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'email': email,
      'display_name': displayName,
      'created_time': createdTime,
      'edited_time': editedTime,
      'user_name': userName,
      'correct_streak': correctStreak,
      'day_streak': dayStreak,
      'xp': xp,
    }.withoutNulls,
  );

  return firestoreData;
}

class UsersRecordDocumentEquality implements Equality<UsersRecord> {
  const UsersRecordDocumentEquality();

  @override
  bool equals(UsersRecord? e1, UsersRecord? e2) {
    return e1?.email == e2?.email &&
        e1?.displayName == e2?.displayName &&
        e1?.createdTime == e2?.createdTime &&
        e1?.editedTime == e2?.editedTime &&
        e1?.userName == e2?.userName &&
        e1?.correctStreak == e2?.correctStreak &&
        e1?.dayStreak == e2?.dayStreak &&
        e1?.xp == e2?.xp;
  }

  @override
  int hash(UsersRecord? e) => const ListEquality().hash([
        e?.email,
        e?.displayName,
        e?.createdTime,
        e?.editedTime,
        e?.userName,
        e?.correctStreak,
        e?.dayStreak,
        e?.xp
      ]);

  @override
  bool isValidKey(Object? o) => o is UsersRecord;
}
