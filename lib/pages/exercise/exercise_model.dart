import '/flutter_flow/flutter_flow_util.dart';
import 'exercise_widget.dart' show ExerciseWidget;
import 'package:flutter/material.dart';

class ExerciseModel extends FlutterFlowModel<ExerciseWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
