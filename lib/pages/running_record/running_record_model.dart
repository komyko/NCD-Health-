import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'running_record_widget.dart' show RunningRecordWidget;
import 'package:flutter/material.dart';

class RunningRecordModel extends FlutterFlowModel<RunningRecordWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for DropDown widget.
  int? dropDownValue;
  FormFieldController<int>? dropDownValueController;
  // State field(s) for timerun widget.
  FocusNode? timerunFocusNode;
  TextEditingController? timerunTextController;
  String? Function(BuildContext, String?)? timerunTextControllerValidator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    timerunFocusNode?.dispose();
    timerunTextController?.dispose();
  }
}
