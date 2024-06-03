import '/flutter_flow/flutter_flow_util.dart';
import 'sleep2_page_widget.dart' show Sleep2PageWidget;
import 'package:flutter/material.dart';

class Sleep2PageModel extends FlutterFlowModel<Sleep2PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for sleep widget.
  FocusNode? sleepFocusNode;
  TextEditingController? sleepTextController;
  String? Function(BuildContext, String?)? sleepTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    sleepFocusNode?.dispose();
    sleepTextController?.dispose();
  }
}
