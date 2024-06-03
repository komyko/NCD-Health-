import '/flutter_flow/flutter_flow_choice_chips.dart';
import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import '/flutter_flow/form_field_controller.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'stress2_page_model.dart';
export 'stress2_page_model.dart';

class Stress2PageWidget extends StatefulWidget {
  const Stress2PageWidget({
    super.key,
    int? stress2,
  }) : stress2 = stress2 ?? 0;

  final int stress2;

  @override
  State<Stress2PageWidget> createState() => _Stress2PageWidgetState();
}

class _Stress2PageWidgetState extends State<Stress2PageWidget> {
  late Stress2PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Stress2PageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    context.watch<FFAppState>();

    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: PreferredSize(
          preferredSize: const Size.fromHeight(50.0),
          child: AppBar(
            backgroundColor: Colors.white,
            automaticallyImplyLeading: false,
            leading: FlutterFlowIconButton(
              borderColor: Colors.transparent,
              borderRadius: 30.0,
              borderWidth: 1.0,
              buttonSize: 60.0,
              icon: const Icon(
                Icons.arrow_back_rounded,
                color: Colors.black,
                size: 30.0,
              ),
              onPressed: () async {
                context.pop();
              },
            ),
            title: Text(
              ' บันทึกข้อมูลความเครียด',
              style: FlutterFlowTheme.of(context).headlineMedium.override(
                    fontFamily: 'Outfit',
                    color: Colors.black,
                    fontSize: 22.0,
                    letterSpacing: 0.0,
                  ),
            ),
            actions: const [],
            centerTitle: false,
            elevation: 2.0,
          ),
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 100.0,
                height: 31.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(0.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'แบบทดสอบความเครียด',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          color: const Color(0xFF432C81),
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 49.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '1. มีปัญหาการนอน นอนไม่หลับหรือนอนมาก',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                width: 342.0,
                height: 41.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('1')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue1 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController1?.value = ['1'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(1),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController1 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('2')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue2 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController1?.value = ['2'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(2),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController2 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('3')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue3 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController1?.value = ['3'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(3),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController3 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('4')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue4 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController1?.value = ['4'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(4),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController4 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('5')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue5 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController1?.value = ['5'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(5),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController5 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 35.0))
                      .addToStart(const SizedBox(width: 20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 18.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '2. มีสมาธิน้อยลง',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                width: 342.0,
                height: 41.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('1')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue6 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController6?.value = ['1'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(1),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController6 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('2')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue7 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController7?.value = ['2'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(2),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController7 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('3')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue8 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController8?.value = ['3'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(3),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController8 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('4')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue9 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController9?.value = ['4'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(4),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController9 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('5')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue10 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController10?.value = ['5'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(5),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController10 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 35.0))
                      .addToStart(const SizedBox(width: 20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 18.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '3. หงุดหงิด/กระวนกระวาย/ว้าวุ่นใจ',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                width: 342.0,
                height: 41.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('1')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue11 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController11?.value = ['1'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(1),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController11 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('2')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue12 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController12?.value = ['2'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(2),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController12 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('3')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue13 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController13?.value = ['3'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(3),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController13 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('4')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue14 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController14?.value = ['4'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(4),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController14 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('5')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue15 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController15?.value = ['5'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(5),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController15 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 35.0))
                      .addToStart(const SizedBox(width: 20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 18.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '4. รู้สึกเบื่อ เซ็ง',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                width: 342.0,
                height: 41.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('1')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue16 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController16?.value = ['1'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(1),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController16 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('2')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue17 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController17?.value = ['2'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(2),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController17 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('3')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue18 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController18?.value = ['3'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(3),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController18 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('4')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue19 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController19?.value = ['4'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(4),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController19 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('5')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue20 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController20?.value = ['5'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(5),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController20 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 35.0))
                      .addToStart(const SizedBox(width: 20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 18.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, -1.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(20.0, 0.0, 0.0, 0.0),
                  child: Text(
                    '5. ไม่อยากพบปะผู้คน',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Readex Pro',
                          color: Colors.black,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
              Container(
                width: 342.0,
                height: 41.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10.0),
                  shape: BoxShape.rectangle,
                  border: Border.all(
                    color: Colors.black,
                  ),
                ),
                child: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('1')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue21 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController21?.value = ['1'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(1),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController21 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('2')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue22 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController22?.value = ['2'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(2),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController22 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('3')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue23 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController23?.value = ['3'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(3),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController23 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('4')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue24 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController24?.value = ['4'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(4),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController24 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                    Flexible(
                      child: FlutterFlowChoiceChips(
                        options: const [ChipData('5')],
                        onChanged: (val) async {
                          setState(() =>
                              _model.choiceChipsValue25 = val?.firstOrNull);
                          setState(() {
                            _model.choiceChipsValueController25?.value = ['5'];
                          });
                          setState(() {
                            FFAppState().updateNumPointStruct(
                              (e) => e..incrementSumPoint(5),
                            );
                          });
                        },
                        selectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFFF7171),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color: FlutterFlowTheme.of(context).primaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).primaryText,
                          iconSize: 18.0,
                          elevation: 4.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        unselectedChipStyle: ChipStyle(
                          backgroundColor: const Color(0xFFEFEFEF),
                          textStyle: FlutterFlowTheme.of(context)
                              .bodyMedium
                              .override(
                                fontFamily: 'Readex Pro',
                                color:
                                    FlutterFlowTheme.of(context).secondaryText,
                                letterSpacing: 0.0,
                              ),
                          iconColor: FlutterFlowTheme.of(context).secondaryText,
                          iconSize: 18.0,
                          elevation: 0.0,
                          borderRadius: BorderRadius.circular(16.0),
                        ),
                        chipSpacing: 35.0,
                        rowSpacing: 12.0,
                        multiselect: false,
                        alignment: WrapAlignment.start,
                        controller: _model.choiceChipsValueController25 ??=
                            FormFieldController<List<String>>(
                          [],
                        ),
                        wrapped: true,
                      ),
                    ),
                  ]
                      .divide(const SizedBox(width: 35.0))
                      .addToStart(const SizedBox(width: 20.0)),
                ),
              ),
              Container(
                width: 100.0,
                height: 88.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              FFButtonWidget(
                onPressed: () async {
                  context.pushNamed(
                    'stress3_page',
                    queryParameters: {
                      'sumTotal3': serializeParam(
                        FFAppState().numPoint.sumPoint,
                        ParamType.int,
                      ),
                    }.withoutNulls,
                    extra: <String, dynamic>{
                      kTransitionInfoKey: const TransitionInfo(
                        hasTransition: true,
                        transitionType: PageTransitionType.fade,
                        duration: Duration(milliseconds: 0),
                      ),
                    },
                  );
                },
                text: 'ตกลง',
                options: FFButtonOptions(
                  width: 143.0,
                  height: 41.0,
                  padding: const EdgeInsetsDirectional.fromSTEB(24.0, 0.0, 24.0, 0.0),
                  iconPadding:
                      const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                  color: const Color(0xFF2C4859),
                  textStyle: FlutterFlowTheme.of(context).titleSmall.override(
                        fontFamily: 'Readex Pro',
                        color: Colors.white,
                        letterSpacing: 0.0,
                      ),
                  elevation: 3.0,
                  borderSide: const BorderSide(
                    color: Colors.transparent,
                    width: 1.0,
                  ),
                  borderRadius: BorderRadius.circular(8.0),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
