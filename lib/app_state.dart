import 'package:flutter/material.dart';
import '/backend/backend.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {}

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  List<String> _subContent = [
    'Cell Structure',
    'Cell Division',
    'Transport In Cells',
    'Principles Of Organisation',
    'Animal Tissues, Organs And Organ Systems',
    'Plant Tissues, Organs And Systems',
    'Communicable Diseases',
    'Monoclonal Antibodies (biology only)',
    'Plant Disease (biology only)',
    'Photosynthesis',
    'Respiration'
  ];
  List<String> get subContent => _subContent;
  set subContent(List<String> value) {
    _subContent = value;
  }

  void addToSubContent(String value) {
    _subContent.add(value);
  }

  void removeFromSubContent(String value) {
    _subContent.remove(value);
  }

  void removeAtIndexFromSubContent(int index) {
    _subContent.removeAt(index);
  }

  void updateSubContentAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _subContent[index] = updateFn(_subContent[index]);
  }

  void insertAtIndexInSubContent(int index, String value) {
    _subContent.insert(index, value);
  }

  String _Test = '';
  String get Test => _Test;
  set Test(String value) {
    _Test = value;
  }

  List<ContentHeaderStruct> _contentHeader = [
    ContentHeaderStruct.fromSerializableMap(jsonDecode(
        '{"content":"Hello World","subContent":"Hello World","unit":"Hello World"}'))
  ];
  List<ContentHeaderStruct> get contentHeader => _contentHeader;
  set contentHeader(List<ContentHeaderStruct> value) {
    _contentHeader = value;
  }

  void addToContentHeader(ContentHeaderStruct value) {
    _contentHeader.add(value);
  }

  void removeFromContentHeader(ContentHeaderStruct value) {
    _contentHeader.remove(value);
  }

  void removeAtIndexFromContentHeader(int index) {
    _contentHeader.removeAt(index);
  }

  void updateContentHeaderAtIndex(
    int index,
    ContentHeaderStruct Function(ContentHeaderStruct) updateFn,
  ) {
    _contentHeader[index] = updateFn(_contentHeader[index]);
  }

  void insertAtIndexInContentHeader(int index, ContentHeaderStruct value) {
    _contentHeader.insert(index, value);
  }

  int _dayStreak = 0;
  int get dayStreak => _dayStreak;
  set dayStreak(int value) {
    _dayStreak = value;
  }

  int _correctStreak = 0;
  int get correctStreak => _correctStreak;
  set correctStreak(int value) {
    _correctStreak = value;
  }

  int _XP = 0;
  int get XP => _XP;
  set XP(int value) {
    _XP = value;
  }

  List<String> _answers = [
    'Production of glucose',
    'Absorption of sunlight',
    'Conversion of light energy into chemical energy',
    'Release of oxygen'
  ];
  List<String> get answers => _answers;
  set answers(List<String> value) {
    _answers = value;
  }

  void addToAnswers(String value) {
    _answers.add(value);
  }

  void removeFromAnswers(String value) {
    _answers.remove(value);
  }

  void removeAtIndexFromAnswers(int index) {
    _answers.removeAt(index);
  }

  void updateAnswersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _answers[index] = updateFn(_answers[index]);
  }

  void insertAtIndexInAnswers(int index, String value) {
    _answers.insert(index, value);
  }

  List<String> _correctAnswers = [
    'Absorption of sunlight',
    'Conversion of light energy into chemical energy',
    'Production of glucose',
    'Release of oxygen'
  ];
  List<String> get correctAnswers => _correctAnswers;
  set correctAnswers(List<String> value) {
    _correctAnswers = value;
  }

  void addToCorrectAnswers(String value) {
    _correctAnswers.add(value);
  }

  void removeFromCorrectAnswers(String value) {
    _correctAnswers.remove(value);
  }

  void removeAtIndexFromCorrectAnswers(int index) {
    _correctAnswers.removeAt(index);
  }

  void updateCorrectAnswersAtIndex(
    int index,
    String Function(String) updateFn,
  ) {
    _correctAnswers[index] = updateFn(_correctAnswers[index]);
  }

  void insertAtIndexInCorrectAnswers(int index, String value) {
    _correctAnswers.insert(index, value);
  }

  List<int> _daysForGraph = [1, 2, 3, 4, 5, 6, 7];
  List<int> get daysForGraph => _daysForGraph;
  set daysForGraph(List<int> value) {
    _daysForGraph = value;
  }

  void addToDaysForGraph(int value) {
    _daysForGraph.add(value);
  }

  void removeFromDaysForGraph(int value) {
    _daysForGraph.remove(value);
  }

  void removeAtIndexFromDaysForGraph(int index) {
    _daysForGraph.removeAt(index);
  }

  void updateDaysForGraphAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _daysForGraph[index] = updateFn(_daysForGraph[index]);
  }

  void insertAtIndexInDaysForGraph(int index, int value) {
    _daysForGraph.insert(index, value);
  }

  List<int> _xpForGraph = [30, 40, 0, 60, 50, 50, 20];
  List<int> get xpForGraph => _xpForGraph;
  set xpForGraph(List<int> value) {
    _xpForGraph = value;
  }

  void addToXpForGraph(int value) {
    _xpForGraph.add(value);
  }

  void removeFromXpForGraph(int value) {
    _xpForGraph.remove(value);
  }

  void removeAtIndexFromXpForGraph(int index) {
    _xpForGraph.removeAt(index);
  }

  void updateXpForGraphAtIndex(
    int index,
    int Function(int) updateFn,
  ) {
    _xpForGraph[index] = updateFn(_xpForGraph[index]);
  }

  void insertAtIndexInXpForGraph(int index, int value) {
    _xpForGraph.insert(index, value);
  }
}

LatLng? _latLngFromString(String? val) {
  if (val == null) {
    return null;
  }
  final split = val.split(',');
  final lat = double.parse(split.first);
  final lng = double.parse(split.last);
  return LatLng(lat, lng);
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}
