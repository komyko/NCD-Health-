import '/flutter_flow/flutter_flow_util.dart';
import 'talland_age_page_widget.dart' show TallandAgePageWidget;
import 'package:flutter/material.dart';

class TallandAgePageModel extends FlutterFlowModel<TallandAgePageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for tt widget.
  FocusNode? ttFocusNode;
  TextEditingController? ttTextController;
  String? Function(BuildContext, String?)? ttTextControllerValidator;
  // State field(s) for ww widget.
  FocusNode? wwFocusNode;
  TextEditingController? wwTextController;
  String? Function(BuildContext, String?)? wwTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    ttFocusNode?.dispose();
    ttTextController?.dispose();

    wwFocusNode?.dispose();
    wwTextController?.dispose();
  }
}
