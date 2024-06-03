import '/flutter_flow/flutter_flow_util.dart';
import 'new2_page_widget.dart' show New2PageWidget;
import 'package:flutter/material.dart';

class New2PageModel extends FlutterFlowModel<New2PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
