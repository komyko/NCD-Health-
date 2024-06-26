import '/flutter_flow/flutter_flow_util.dart';
import 'trainning_action3_widget.dart' show TrainningAction3Widget;
import 'package:flutter/material.dart';

class TrainningAction3Model extends FlutterFlowModel<TrainningAction3Widget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
  }
}
