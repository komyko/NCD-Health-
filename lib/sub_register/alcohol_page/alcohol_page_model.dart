import '/flutter_flow/flutter_flow_util.dart';
import 'alcohol_page_widget.dart' show AlcoholPageWidget;
import 'package:flutter/material.dart';

class AlcoholPageModel extends FlutterFlowModel<AlcoholPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
