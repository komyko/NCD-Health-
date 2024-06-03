import '/flutter_flow/flutter_flow_util.dart';
import 'age_page_widget.dart' show AgePageWidget;
import 'package:flutter/material.dart';

class AgePageModel extends FlutterFlowModel<AgePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for aa widget.
  FocusNode? aaFocusNode;
  TextEditingController? aaTextController;
  String? Function(BuildContext, String?)? aaTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    aaFocusNode?.dispose();
    aaTextController?.dispose();
  }
}
