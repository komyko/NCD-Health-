import '/flutter_flow/flutter_flow_util.dart';
import 'trainning_page_widget.dart' show TrainningPageWidget;
import 'package:flutter/material.dart';

class TrainningPageModel extends FlutterFlowModel<TrainningPageWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
