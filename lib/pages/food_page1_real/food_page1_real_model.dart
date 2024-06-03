import '/flutter_flow/flutter_flow_util.dart';
import 'food_page1_real_widget.dart' show FoodPage1RealWidget;
import 'package:flutter/material.dart';

class FoodPage1RealModel extends FlutterFlowModel<FoodPage1RealWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
