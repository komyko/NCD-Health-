import '/flutter_flow/flutter_flow_util.dart';
import 'food2_page_widget.dart' show Food2PageWidget;
import 'package:flutter/material.dart';

class Food2PageModel extends FlutterFlowModel<Food2PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
