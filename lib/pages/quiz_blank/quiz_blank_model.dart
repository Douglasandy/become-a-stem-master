import '/flutter_flow/flutter_flow_util.dart';
import 'quiz_blank_widget.dart' show QuizBlankWidget;
import 'package:flutter/material.dart';

class QuizBlankModel extends FlutterFlowModel<QuizBlankWidget> {
  ///  Local state fields for this page.

  String? selectedAnswer;

  String correctAnswer = 'Chloroplast';

  bool? answerCorrect;

  bool? answerWrong;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  /// Initialization and disposal methods.

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }

  /// Action blocks are added here.

  /// Additional helper methods are added here.
}
