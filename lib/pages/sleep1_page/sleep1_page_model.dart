import '/flutter_flow/flutter_flow_util.dart';
import 'sleep1_page_widget.dart' show Sleep1PageWidget;
import 'package:flutter/material.dart';

class Sleep1PageModel extends FlutterFlowModel<Sleep1PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
