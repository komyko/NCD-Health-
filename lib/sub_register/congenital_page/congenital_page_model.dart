import '/flutter_flow/flutter_flow_util.dart';
import 'congenital_page_widget.dart' show CongenitalPageWidget;
import 'package:flutter/material.dart';

class CongenitalPageModel extends FlutterFlowModel<CongenitalPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for cc widget.
  FocusNode? ccFocusNode;
  TextEditingController? ccTextController;
  String? Function(BuildContext, String?)? ccTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ccFocusNode?.dispose();
    ccTextController?.dispose();
  }
}
