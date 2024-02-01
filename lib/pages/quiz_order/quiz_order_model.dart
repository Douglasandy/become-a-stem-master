import '/flutter_flow/flutter_flow_util.dart';
import 'quiz_order_widget.dart' show QuizOrderWidget;
import 'package:flutter/material.dart';

class QuizOrderModel extends FlutterFlowModel<QuizOrderWidget> {
  ///  Local state fields for this page.

  String? selectedAnswer;

  String correctAnswer = 'Cell Wall';

  bool? answerCorrect;

  bool? answerWrong;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Custom Action - onReorder] action in questionOptions widget.
  List<String>? newList;

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
