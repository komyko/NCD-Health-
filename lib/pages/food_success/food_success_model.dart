import '/flutter_flow/flutter_flow_util.dart';
import 'food_success_widget.dart' show FoodSuccessWidget;
import 'package:flutter/material.dart';

class FoodSuccessModel extends FlutterFlowModel<FoodSuccessWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
