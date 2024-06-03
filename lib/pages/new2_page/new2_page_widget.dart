import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'new2_page_model.dart';
export 'new2_page_model.dart';

class New2PageWidget extends StatefulWidget {
  const New2PageWidget({super.key});

  @override
  State<New2PageWidget> createState() => _New2PageWidgetState();
}

class _New2PageWidgetState extends State<New2PageWidget> {
  late New2PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => New2PageModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => _model.unfocusNode.canRequestFocus
          ? FocusScope.of(context).requestFocus(_model.unfocusNode)
          : FocusScope.of(context).unfocus(),
      child: Scaffold(
        key: scaffoldKey,
        backgroundColor: Colors.white,
        appBar: AppBar(
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
            'หลักปฏิบัติป้องกันโรคไม่ติดต่อเรื้อรัง (NCDs)',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.black,
                  fontSize: 16.0,
                  letterSpacing: 0.0,
                  fontWeight: FontWeight.w500,
                ),
          ),
          actions: const [],
          centerTitle: false,
          elevation: 2.0,
        ),
        body: SafeArea(
          top: true,
          child: Column(
            mainAxisSize: MainAxisSize.max,
            children: [
              Container(
                width: 541.0,
                height: 244.0,
                decoration: BoxDecoration(
                  color: Colors.white,
                  image: DecorationImage(
                    fit: BoxFit.cover,
                    image: Image.asset(
                      'assets/images/messageImage_1711731006504.jpg',
                    ).image,
                  ),
                  borderRadius: BorderRadius.circular(0.0),
                  shape: BoxShape.rectangle,
                ),
                child: Align(
                  alignment: const AlignmentDirectional(-1.0, 1.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    mainAxisAlignment: MainAxisAlignment.end,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ClipRRect(
                        borderRadius: BorderRadius.circular(0.0),
                        child: BackdropFilter(
                          filter: ImageFilter.blur(
                            sigmaX: 5.0,
                            sigmaY: 7.0,
                          ),
                          child: Container(
                            width: double.infinity,
                            height: 80.0,
                            decoration: const BoxDecoration(
                              color: Color(0x7F101213),
                            ),
                            child: Padding(
                              padding: const EdgeInsetsDirectional.fromSTEB(
                                  10.0, 10.0, 10.0, 10.0),
                              child: Row(
                                mainAxisSize: MainAxisSize.max,
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Padding(
                                    padding: const EdgeInsetsDirectional.fromSTEB(
                                        5.0, 0.0, 0.0, 0.0),
                                    child: Column(
                                      mainAxisSize: MainAxisSize.max,
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Padding(
                                          padding:
                                              const EdgeInsetsDirectional.fromSTEB(
                                                  0.0, 0.0, 0.0, 2.0),
                                          child: Text(
                                            'หลักปฏิบัติป้องกันโรคไม่ติดต่อเรื้อรัง (NCDs)',
                                            style: FlutterFlowTheme.of(context)
                                                .bodyMedium
                                                .override(
                                                  fontFamily: 'Raleway',
                                                  color: Colors.white,
                                                  fontSize: 20.0,
                                                  letterSpacing: 0.0,
                                                  fontWeight: FontWeight.w500,
                                                ),
                                          ),
                                        ),
                                        Text(
                                          'กลุ่มโรค NCDs ',
                                          style: FlutterFlowTheme.of(context)
                                              .bodyMedium
                                              .override(
                                                fontFamily: 'Raleway',
                                                color: Colors.white,
                                                fontSize: 15.0,
                                                letterSpacing: 0.0,
                                                fontWeight: FontWeight.w500,
                                              ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ].divide(const SizedBox(height: 5.0)),
                  ),
                ),
              ),
              Container(
                width: 100.0,
                height: 19.0,
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
              ),
              Container(
                width: 343.0,
                height: 46.0,
                decoration: BoxDecoration(
                  color: const Color(0xFFFF8181),
                  borderRadius: BorderRadius.circular(18.0),
                ),
                child: Column(
                  mainAxisSize: MainAxisSize.max,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Row(
                      mainAxisSize: MainAxisSize.max,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Align(
                          alignment: const AlignmentDirectional(-1.0, 0.0),
                          child: Text(
                            'หลักปฏิบัติป้องกันโรคไม่ติดต่อเรื้อรัง (NCDs)',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
                                  fontFamily: 'Raleway',
                                  color: Colors.white,
                                  fontSize: 16.0,
                                  letterSpacing: 0.0,
                                  fontWeight: FontWeight.w600,
                                ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Align(
                alignment: const AlignmentDirectional(-1.0, 0.0),
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Text(
                    '1. รับประทานอาหารที่มีประโยชน์ เน้นผัก และผลไม้ที่ไม่หวาน และกากใยสูง เช่น ฝรั่ง ชมพู่ \nแอปเปิ้ล แก้วมังกร\n2. เพิ่มกิจกรรมทางกาย เคลื่อนไหวร่างกายให้มากขึ้นออกกำลังกายสม่ำเสมอ อย่างน้อย 150 นาทีต่อสัปดาห์\n3. รับประทานอาหารให้เหมาะสมตามความจำเป็นของร่างกาย\n4. หาวิธีผ่อนคลาย และจัดการกับความเครียด\n5. นอนหลับพักผ่อนให้เพียงพอ\n6. ลดการบริโภคอาหารที่มีรสเค็มจัด หวาดจัด มันจัด\n7. ควบคุมน้ำหนัก ไม่ให้ค่าดัชนีมวลกายเกิน 23 กิโลกรัมต่อตารางเมตร เนื่องจากเป็นความเสี่ยงต่อโรคเบาหวาน โรคความดันโลหิตสูง โรคไขมันในเลือดสูง โรคหลอดเลือดหัวใจ\n8. ไม่สูบบุหรี่\n9. ไม่ดื่มเครื่องดื่มแอลกอฮอล์',
                    style: FlutterFlowTheme.of(context).bodyMedium.override(
                          fontFamily: 'Raleway',
                          color: Colors.black,
                          fontSize: 13.0,
                          letterSpacing: 0.0,
                        ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
