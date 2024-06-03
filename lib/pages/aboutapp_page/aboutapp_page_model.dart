import '/flutter_flow/flutter_flow_util.dart';
import 'aboutapp_page_widget.dart' show AboutappPageWidget;
import 'package:flutter/material.dart';

class AboutappPageModel extends FlutterFlowModel<AboutappPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
