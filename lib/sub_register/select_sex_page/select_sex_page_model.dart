import '/flutter_flow/flutter_flow_util.dart';
import 'select_sex_page_widget.dart' show SelectSexPageWidget;
import 'package:flutter/material.dart';

class SelectSexPageModel extends FlutterFlowModel<SelectSexPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
