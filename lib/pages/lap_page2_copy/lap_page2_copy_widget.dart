import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:provider/provider.dart';
import 'lap_page2_copy_model.dart';
export 'lap_page2_copy_model.dart';

class LapPage2CopyWidget extends StatefulWidget {
  const LapPage2CopyWidget({
    super.key,
    required this.bp,
    required this.bmi,
    required this.fbs,
    required this.tg,
    required this.ldl,
    required this.sgpt,
    required this.cr,
    required this.ckd,
  });

  final int? bp;
  final double? bmi;
  final int? fbs;
  final int? tg;
  final int? ldl;
  final int? sgpt;
  final double? cr;
  final int? ckd;

  @override
  State<LapPage2CopyWidget> createState() => _LapPage2CopyWidgetState();
}

class _LapPage2CopyWidgetState extends State<LapPage2CopyWidget> {
  late LapPage2CopyModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => LapPage2CopyModel());

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
              'ข้อมูลจากแลป',
              textAlign: TextAlign.center,
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
        body: SingleChildScrollView(
          child: Column(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              Container(
                width: 192.0,
                height: 23.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: 300.0,
                height: 593.0,
                decoration: BoxDecoration(
                  color: const Color(0x3FC4FFA9),
                  borderRadius: BorderRadius.circular(12.0),
                ),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(35.0, 10.0, 0.0, 0.0),
                  child: SingleChildScrollView(
                    child: Column(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ความดันโลหิต : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    () {
                                      if (widget.bp! < 120) {
                                        return FFAppState().labbp1;
                                      } else if ((widget.bp! >= 120) &&
                                          (widget.bp! <= 129)) {
                                        return FFAppState().labbp2;
                                      } else if ((widget.bp! >= 130) &&
                                          (widget.bp! <= 139)) {
                                        return FFAppState().labbp3;
                                      } else if ((widget.bp! >= 140) &&
                                          (widget.bp! <= 159)) {
                                        return FFAppState().labbp4;
                                      } else if ((widget.bp! >= 160) &&
                                          (widget.bp! <= 179)) {
                                        return FFAppState().labbp5;
                                      } else if (widget.bp! > 180) {
                                        return FFAppState().labbp6;
                                      } else {
                                        return FFAppState().labbp6;
                                      }
                                    }(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ดัชนีมวลกาย : ',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    () {
                                      if (widget.bmi! < 18.5) {
                                        return FFAppState().labbmi1;
                                      } else if ((widget.bmi! > 18.5) &&
                                          (widget.bmi! < 23.0)) {
                                        return FFAppState().labbmi2;
                                      } else if ((widget.bmi! > 23.0) &&
                                          (widget.bmi! < 25.0)) {
                                        return FFAppState().labbmi3;
                                      } else if ((widget.bmi! > 25.0) &&
                                          (widget.bmi! < 30.0)) {
                                        return FFAppState().labbmi4;
                                      } else if (widget.bmi! > 30.0) {
                                        return FFAppState().labbmi5;
                                      } else {
                                        return FFAppState().labbmi5;
                                      }
                                    }(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ],
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 20.0, 0.0),
                          child: Row(
                            mainAxisSize: MainAxisSize.max,
                            children: [
                              Column(
                                mainAxisSize: MainAxisSize.max,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    'ระดับน้ำตาลในเลือดหลังอดอาหาร:',
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          fontSize: 16.0,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                  Text(
                                    () {
                                      if (widget.fbs! < 70) {
                                        return FFAppState().labfbs1;
                                      } else if ((widget.fbs! >= 70) &&
                                          (widget.fbs! <= 100)) {
                                        return FFAppState().labfbs1;
                                      } else if ((widget.fbs! >= 101) &&
                                          (widget.fbs! <= 125)) {
                                        return FFAppState().labfbs2;
                                      } else if (widget.fbs! > 126) {
                                        return FFAppState().labfbs3;
                                      } else {
                                        return FFAppState().labfbs3;
                                      }
                                    }(),
                                    style: FlutterFlowTheme.of(context)
                                        .bodyMedium
                                        .override(
                                          fontFamily: 'Readex Pro',
                                          color: Colors.black,
                                          letterSpacing: 0.0,
                                        ),
                                  ),
                                ].divide(const SizedBox(height: 10.0)),
                              ),
                            ],
                          ),
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ไขมันไตรกลีเซอไรด์ :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  () {
                                    if (widget.tg! < 150) {
                                      return FFAppState().labtg1;
                                    } else if ((widget.tg! >= 150) &&
                                        (widget.tg! <= 199)) {
                                      return FFAppState().labtg2;
                                    } else if ((widget.tg! >= 200) &&
                                        (widget.tg! <= 500)) {
                                      return FFAppState().labtg3;
                                    } else if (widget.tg! > 500) {
                                      return FFAppState().labtg4;
                                    } else {
                                      return FFAppState().labtg4;
                                    }
                                  }(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ไขมันความหนาแน่นต่ำ :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  () {
                                    if (widget.ldl! < 100) {
                                      return FFAppState().labldl1;
                                    } else if ((widget.ldl! >= 100) &&
                                        (widget.ldl! <= 129)) {
                                      return FFAppState().labldl2;
                                    } else if ((widget.ldl! >= 130) &&
                                        (widget.ldl! <= 159)) {
                                      return FFAppState().labldl3;
                                    } else if ((widget.ldl! >= 160) &&
                                        (widget.ldl! <= 189)) {
                                      return FFAppState().labldl4;
                                    } else if (widget.ldl! > 189) {
                                      return FFAppState().labldl5;
                                    } else {
                                      return FFAppState().labldl5;
                                    }
                                  }(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'ค่าตับ หรือ SGPT :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  () {
                                    if (widget.sgpt! <= 49) {
                                      return FFAppState().labsgt1;
                                    } else if (widget.sgpt! > 49) {
                                      return FFAppState().labsgt2;
                                    } else {
                                      return FFAppState().labsgt2;
                                    }
                                  }(),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'การทำงานของไต :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    () {
                                      if ((widget.cr! >= 0.0) &&
                                          (widget.cr! < 0.6)) {
                                        return FFAppState().labcr1;
                                      } else if ((widget.cr! >= 0.6) &&
                                          (widget.cr! <= 1.2)) {
                                        return FFAppState().labcr2;
                                      } else if (widget.cr! > 1.2) {
                                        return FFAppState().labcr3;
                                      } else {
                                        return FFAppState().labcr3;
                                      }
                                    }(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ],
                        ),
                        Row(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'อัตรากรองของไต eGFR :',
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        fontSize: 16.0,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                                Text(
                                  valueOrDefault<String>(
                                    () {
                                      if (widget.ckd! >= 90) {
                                        return FFAppState().labgfr1;
                                      } else if ((widget.ckd! >= 60) &&
                                          (widget.ckd! <= 89)) {
                                        return FFAppState().labgfr2;
                                      } else if ((widget.ckd! >= 30) &&
                                          (widget.ckd! <= 59)) {
                                        return FFAppState().labgfr3;
                                      } else if ((widget.ckd! >= 15) &&
                                          (widget.ckd! <= 29)) {
                                        return FFAppState().labgfr4;
                                      } else if (widget.ckd! < 15) {
                                        return FFAppState().labgfr5;
                                      } else {
                                        return FFAppState().labgfr5;
                                      }
                                    }(),
                                    '0',
                                  ),
                                  style: FlutterFlowTheme.of(context)
                                      .bodyMedium
                                      .override(
                                        fontFamily: 'Readex Pro',
                                        color: Colors.black,
                                        letterSpacing: 0.0,
                                      ),
                                ),
                              ].divide(const SizedBox(height: 10.0)),
                            ),
                          ],
                        ),
                      ].divide(const SizedBox(height: 22.0)),
                    ),
                  ),
                ),
              ),
              Lottie.asset(
                'assets/lottie_animations/Animation_-_1714926990120.json',
                width: 231.0,
                height: 177.0,
                fit: BoxFit.contain,
                animate: true,
              ),
              Column(
                mainAxisSize: MainAxisSize.max,
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                    alignment: const AlignmentDirectional(0.0, 0.0),
                    child: FFButtonWidget(
                      onPressed: () async {
                        context.pushNamed('profile1_page');
                      },
                      text: 'ตกลง',
                      options: FFButtonOptions(
                        width: 150.0,
                        height: 40.0,
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            24.0, 0.0, 24.0, 0.0),
                        iconPadding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 0.0),
                        color: const Color(0xFF2C4859),
                        textStyle:
                            FlutterFlowTheme.of(context).titleSmall.override(
                                  fontFamily: 'Readex Pro',
                                  color: Colors.white,
                                  letterSpacing: 0.0,
                                ),
                        elevation: 3.0,
                        borderSide: const BorderSide(
                          color: Colors.transparent,
                        ),
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                    ),
                  ),
                  Container(
                    width: 295.0,
                    height: 26.0,
                    decoration: const BoxDecoration(
                      color: Colors.white,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
