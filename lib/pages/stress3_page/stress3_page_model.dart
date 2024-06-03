import '/flutter_flow/flutter_flow_util.dart';
import 'stress3_page_widget.dart' show Stress3PageWidget;
import 'package:flutter/material.dart';

class Stress3PageModel extends FlutterFlowModel<Stress3PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
