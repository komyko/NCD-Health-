import '/flutter_flow/flutter_flow_util.dart';
import 'smoking_page_widget.dart' show SmokingPageWidget;
import 'package:flutter/material.dart';

class SmokingPageModel extends FlutterFlowModel<SmokingPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
