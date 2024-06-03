import '/flutter_flow/flutter_flow_util.dart';
import 'stress_technical_widget.dart' show StressTechnicalWidget;
import 'package:flutter/material.dart';

class StressTechnicalModel extends FlutterFlowModel<StressTechnicalWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
