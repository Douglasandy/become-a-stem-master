// Automatic FlutterFlow imports
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

Future<List<String>> onReorder(
  int? oldIndex,
  int? newIndex,
  List<String>? answers,
) async {
  // if oldIndex (newIndex, then newIndex -=1, move item at oldIndex into newIndex
  if (oldIndex != null && newIndex != null && answers != null) {
    if (oldIndex < newIndex) {
      newIndex -= 1;
    }
    final String item = answers.removeAt(oldIndex);
    answers.insert(newIndex, item);
    return answers;
  } else {
    throw Exception('Invalid arguments provided');
  }
}
