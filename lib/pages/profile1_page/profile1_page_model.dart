import '/flutter_flow/flutter_flow_util.dart';
import 'profile1_page_widget.dart' show Profile1PageWidget;
import 'package:flutter/material.dart';

class Profile1PageModel extends FlutterFlowModel<Profile1PageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
