import '/flutter_flow/flutter_flow_util.dart';
import 'new1_page_widget.dart' show New1PageWidget;
import 'package:flutter/material.dart';

class New1PageModel extends FlutterFlowModel<New1PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
