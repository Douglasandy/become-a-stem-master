import '/flutter_flow/flutter_flow_util.dart';
import 'quiz_mcq_widget.dart' show QuizMcqWidget;
import 'package:flutter/material.dart';

class QuizMcqModel extends FlutterFlowModel<QuizMcqWidget> {
  ///  Local state fields for this page.

  String? selectedAnswer;

  String correctAnswer = 'Cell Wall';

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
