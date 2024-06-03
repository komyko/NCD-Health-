import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_widgets.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'stress3_page_model.dart';
export 'stress3_page_model.dart';

class Stress3PageWidget extends StatefulWidget {
  const Stress3PageWidget({
    super.key,
    required this.sumTotal3,
  });

  final int? sumTotal3;

  @override
  State<Stress3PageWidget> createState() => _Stress3PageWidgetState();
}

class _Stress3PageWidgetState extends State<Stress3PageWidget> {
  late Stress3PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Stress3PageModel());

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
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                  child: Text(
                    'Test Stress',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          color: Colors.white,
                          fontSize: 20.0,
                          letterSpacing: 0.0,
                          fontWeight: FontWeight.bold,
                        ),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(20.0),
                child: Text(
                  'สรุปผลแบบทดสอบความเครียด',
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        fontSize: 20.0,
                        letterSpacing: 0.0,
                        fontWeight: FontWeight.w600,
                      ),
                ),
              ),
              Container(
                width: 268.0,
                height: 192.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8.0),
                  child: Image.network(
                    () {
                      if (widget.sumTotal3! < 7) {
                        return FFAppState().stresspic1;
                      } else if (widget.sumTotal3 == 7) {
                        return FFAppState().stresspic2;
                      } else if (widget.sumTotal3 == 14) {
                        return FFAppState().stresspic4;
                      } else if (widget.sumTotal3 == 15) {
                        return FFAppState().stresspic4;
                      } else if (widget.sumTotal3 == 16) {
                        return FFAppState().stresspic4;
                      } else if (widget.sumTotal3 == 17) {
                        return FFAppState().stresspic4;
                      } else if (widget.sumTotal3 == 18) {
                        return FFAppState().stresspic4;
                      } else if (widget.sumTotal3 == 19) {
                        return FFAppState().stresspic4;
                      } else if (widget.sumTotal3 == 8) {
                        return FFAppState().stresspic2;
                      } else if (widget.sumTotal3 == 9) {
                        return FFAppState().stresspic2;
                      } else if (widget.sumTotal3 == 10) {
                        return FFAppState().stresspic2;
                      } else if (widget.sumTotal3 == 11) {
                        return FFAppState().stresspic2;
                      } else if (widget.sumTotal3 == 12) {
                        return FFAppState().stresspic2;
                      } else if (widget.sumTotal3 == 13) {
                        return FFAppState().stresspic2;
                      } else {
                        return FFAppState().stresspic5;
                      }
                    }(),
                    width: 300.0,
                    height: 175.0,
                    fit: BoxFit.contain,
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(42.0, 20.0, 42.0, 0.0),
                child: Text(
                  () {
                    if (widget.sumTotal3! < 7) {
                      return FFAppState().stresst1;
                    } else if (widget.sumTotal3 == 7) {
                      return FFAppState().stresst2;
                    } else if (widget.sumTotal3 == 14) {
                      return FFAppState().stresst3;
                    } else if (widget.sumTotal3 == 15) {
                      return FFAppState().stresst3;
                    } else if (widget.sumTotal3 == 16) {
                      return FFAppState().stresst3;
                    } else if (widget.sumTotal3 == 17) {
                      return FFAppState().stresst3;
                    } else if (widget.sumTotal3 == 18) {
                      return FFAppState().stresst3;
                    } else if (widget.sumTotal3 == 19) {
                      return FFAppState().stresst3;
                    } else if (widget.sumTotal3 == 8) {
                      return FFAppState().stresst2;
                    } else if (widget.sumTotal3 == 9) {
                      return FFAppState().stresst2;
                    } else if (widget.sumTotal3 == 10) {
                      return FFAppState().stresst2;
                    } else if (widget.sumTotal3 == 11) {
                      return FFAppState().stresst2;
                    } else if (widget.sumTotal3 == 12) {
                      return FFAppState().stresst2;
                    } else if (widget.sumTotal3 == 13) {
                      return FFAppState().stresst2;
                    } else {
                      return FFAppState().stresst4;
                    }
                  }(),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: () {
                          if (widget.sumTotal3! > 14) {
                            return const Color(0xFFDB2E2E);
                          } else if (widget.sumTotal3! > 20) {
                            return const Color(0xFFDB2E2E);
                          } else {
                            return Colors.black;
                          }
                        }(),
                        fontSize: 19.0,
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Padding(
                padding: const EdgeInsetsDirectional.fromSTEB(42.0, 15.0, 42.0, 0.0),
                child: Text(
                  () {
                    if (widget.sumTotal3! < 7) {
                      return FFAppState().strees3;
                    } else if (widget.sumTotal3 == 7) {
                      return FFAppState().stresstext1;
                    } else if (widget.sumTotal3 == 8) {
                      return FFAppState().stresstext1;
                    } else if (widget.sumTotal3 == 9) {
                      return FFAppState().stresstext1;
                    } else if (widget.sumTotal3 == 10) {
                      return FFAppState().stresstext1;
                    } else if (widget.sumTotal3 == 11) {
                      return FFAppState().stresstext1;
                    } else if (widget.sumTotal3 == 12) {
                      return FFAppState().stresstext1;
                    } else if (widget.sumTotal3 == 13) {
                      return FFAppState().stresstext1;
                    } else {
                      return FFAppState().stresstext2;
                    }
                  }(),
                  textAlign: TextAlign.center,
                  style: FlutterFlowTheme.of(context).bodyMedium.override(
                        fontFamily: 'Readex Pro',
                        color: () {
                          if (widget.sumTotal3! > 14) {
                            return const Color(0xFFDB2E2E);
                          } else if (widget.sumTotal3! > 20) {
                            return const Color(0xFFDB2E2E);
                          } else {
                            return Colors.black;
                          }
                        }(),
                        letterSpacing: 0.0,
                      ),
                ),
              ),
              Container(
                width: 100.0,
                height: 32.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: 321.0,
                height: 335.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFDCF2DE),
                  borderRadius: BorderRadius.circular(8.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding: const EdgeInsetsDirectional.fromSTEB(
                            15.0, 15.0, 0.0, 0.0),
                        child: Text(
                          'การแปลผล',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'คะแนน 0 - 6 ความเครียดน้อย',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'คะแนน 7 - 13 ความเครียดปานกลาง',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'คะแนน 14- 19 ความเครียดมาก',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Align(
                      alignment: const AlignmentDirectional(-1.0, 0.0),
                      child: Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(15.0, 0.0, 0.0, 0.0),
                        child: Text(
                          'คะแนน 20 - 25 ความเครียดมากที่สุด',
                          style:
                              FlutterFlowTheme.of(context).bodyMedium.override(
                                    fontFamily: 'Readex Pro',
                                    color: Colors.black,
                                    letterSpacing: 0.0,
                                  ),
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(16.0),
                      child: Container(
                        width: 249.0,
                        height: 100.0,
                        decoration: BoxDecoration(
                          color: const Color(0xFFF3ECB0),
                          borderRadius: BorderRadius.circular(20.0),
                          shape: BoxShape.rectangle,
                        ),
                        child: Align(
                          alignment: const AlignmentDirectional(0.0, 0.0),
                          child: Text(
                            valueOrDefault<String>(
                              widget.sumTotal3.toString(),
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
                        ),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(10.0),
                      child: FFButtonWidget(
                        onPressed: () async {
                          context.pushNamed(
                            'stress1_page',
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
                          width: 130.0,
                          height: 40.0,
                          padding: const EdgeInsetsDirectional.fromSTEB(
                              24.0, 0.0, 24.0, 0.0),
                          iconPadding: const EdgeInsetsDirectional.fromSTEB(
                              0.0, 0.0, 0.0, 0.0),
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
                            width: 1.0,
                          ),
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
