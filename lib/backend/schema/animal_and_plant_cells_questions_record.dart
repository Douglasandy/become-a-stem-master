import 'dart:async';

import 'package:collection/collection.dart';

import '/backend/schema/util/firestore_util.dart';

import 'index.dart';

class AnimalAndPlantCellsQuestionsRecord extends FirestoreRecord {
  AnimalAndPlantCellsQuestionsRecord._(
    super.reference,
    super.data,
  ) {
    _initializeFields();
  }

  // "correct_answer" field.
  String? _correctAnswer;
  String get correctAnswer => _correctAnswer ?? '';
  bool hasCorrectAnswer() => _correctAnswer != null;

  // "option_a" field.
  String? _optionA;
  String get optionA => _optionA ?? '';
  bool hasOptionA() => _optionA != null;

  // "option_b" field.
  String? _optionB;
  String get optionB => _optionB ?? '';
  bool hasOptionB() => _optionB != null;

  // "option_c" field.
  String? _optionC;
  String get optionC => _optionC ?? '';
  bool hasOptionC() => _optionC != null;

  // "option_d" field.
  String? _optionD;
  String get optionD => _optionD ?? '';
  bool hasOptionD() => _optionD != null;

  // "question" field.
  String? _question;
  String get question => _question ?? '';
  bool hasQuestion() => _question != null;

  void _initializeFields() {
    _correctAnswer = snapshotData['correct_answer'] as String?;
    _optionA = snapshotData['option_a'] as String?;
    _optionB = snapshotData['option_b'] as String?;
    _optionC = snapshotData['option_c'] as String?;
    _optionD = snapshotData['option_d'] as String?;
    _question = snapshotData['question'] as String?;
  }

  static CollectionReference get collection =>
      FirebaseFirestore.instance.collection('animal_and_plant_cells_questions');

  static Stream<AnimalAndPlantCellsQuestionsRecord> getDocument(
          DocumentReference ref) =>
      ref
          .snapshots()
          .map((s) => AnimalAndPlantCellsQuestionsRecord.fromSnapshot(s));

  static Future<AnimalAndPlantCellsQuestionsRecord> getDocumentOnce(
          DocumentReference ref) =>
      ref.get().then((s) => AnimalAndPlantCellsQuestionsRecord.fromSnapshot(s));

  static AnimalAndPlantCellsQuestionsRecord fromSnapshot(
          DocumentSnapshot snapshot) =>
      AnimalAndPlantCellsQuestionsRecord._(
        snapshot.reference,
        mapFromFirestore(snapshot.data() as Map<String, dynamic>),
      );

  static AnimalAndPlantCellsQuestionsRecord getDocumentFromData(
    Map<String, dynamic> data,
    DocumentReference reference,
  ) =>
      AnimalAndPlantCellsQuestionsRecord._(reference, mapFromFirestore(data));

  @override
  String toString() =>
      'AnimalAndPlantCellsQuestionsRecord(reference: ${reference.path}, data: $snapshotData)';

  @override
  int get hashCode => reference.path.hashCode;

  @override
  bool operator ==(other) =>
      other is AnimalAndPlantCellsQuestionsRecord &&
      reference.path.hashCode == other.reference.path.hashCode;
}

Map<String, dynamic> createAnimalAndPlantCellsQuestionsRecordData({
  String? correctAnswer,
  String? optionA,
  String? optionB,
  String? optionC,
  String? optionD,
  String? question,
}) {
  final firestoreData = mapToFirestore(
    <String, dynamic>{
      'correct_answer': correctAnswer,
      'option_a': optionA,
      'option_b': optionB,
      'option_c': optionC,
      'option_d': optionD,
      'question': question,
    }.withoutNulls,
  );

  return firestoreData;
}

class AnimalAndPlantCellsQuestionsRecordDocumentEquality
    implements Equality<AnimalAndPlantCellsQuestionsRecord> {
  const AnimalAndPlantCellsQuestionsRecordDocumentEquality();

  @override
  bool equals(AnimalAndPlantCellsQuestionsRecord? e1,
      AnimalAndPlantCellsQuestionsRecord? e2) {
    return e1?.correctAnswer == e2?.correctAnswer &&
        e1?.optionA == e2?.optionA &&
        e1?.optionB == e2?.optionB &&
        e1?.optionC == e2?.optionC &&
        e1?.optionD == e2?.optionD &&
        e1?.question == e2?.question;
  }

  @override
  int hash(AnimalAndPlantCellsQuestionsRecord? e) => const ListEquality().hash([
        e?.correctAnswer,
        e?.optionA,
        e?.optionB,
        e?.optionC,
        e?.optionD,
        e?.question
      ]);

  @override
  bool isValidKey(Object? o) => o is AnimalAndPlantCellsQuestionsRecord;
}
