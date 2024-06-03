import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'sleep3_page_model.dart';
export 'sleep3_page_model.dart';

class Sleep3PageWidget extends StatefulWidget {
  const Sleep3PageWidget({super.key});

  @override
  State<Sleep3PageWidget> createState() => _Sleep3PageWidgetState();
}

class _Sleep3PageWidgetState extends State<Sleep3PageWidget> {
  late Sleep3PageModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => Sleep3PageModel());

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
            'คำแนะนำการนอนที่ถูกต้อง',
            style: FlutterFlowTheme.of(context).headlineMedium.override(
                  fontFamily: 'Outfit',
                  color: Colors.black,
                  fontSize: 22.0,
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
          child: SingleChildScrollView(
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
                        'assets/images/cq5dam.web.1440.405.png',
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
                                              'คำแนะนำและวิธีการนอนที่ถูกต้อง',
                                              style:
                                                  FlutterFlowTheme.of(context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 20.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
                                                      ),
                                            ),
                                          ),
                                          Text(
                                            'วิธีการนอนที่ได้คุณภาพ',
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
                  height: 14.0,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                  ),
                ),
                Container(
                  width: 351.0,
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
                              'วิธีการนอนที่ได้คุณภาพและถูกต้อง',
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
                    padding: const EdgeInsets.all(20.0),
                    child: Text(
                      'เรื่องของการนอนต้องคำนึง 2 อย่างคือ\n\n1.ชั่วโมงการนอนที่เหมาะสม\nชั่วโมงการนอน ถ้าจะให้สมบูรณ์แบบควรนอนให้ได้ 7 – 8 ชั่วโมง แต่ละวัยต้องการจำนวนการนอนจะไม่เท่ากัน ชั่วโมงการนอนของเด็ก 11 – 13 ชั่วโมง ผู้ใหญ่ 7 – 8 ชั่วโมง\nคุณภาพการหลับ การหลับอย่างมีคุณภาพ คือ ครบวงจรทุกระยะการหลับ ทั้งหลับตื้น หลับลึก และหลับฝัน ให้ครบทุกระยะเพราะมีความสัมพันธ์กัน\n\n2.การเปลี่ยนท่านอนให้เหมาะสม\n1. ท่านอนที่ถูกต้องสำหรับคนปวดเมื่อยคอและหลัง\nแนะนำให้นอนหงายหรือนอนตะแคงโดยเลือกระดับความสูงของหมอนให้เหมาะสม หากนอนตะแคง ให้หนุนหมอนโดยให้แนวลำคอและกระดูกสันหลังอยู่ในแนวตรง หรือนอนหงายให้หนุนหมอนสูงพอดีกับแนวโค้งของกระดูกต้นคอ เพื่อลดการกดทับที่กระดูกคอและหลัง\n\n2. ท่านอนที่ถูกต้องสำหรับคนปวดบ่าไหล่\nคนที่ปวดบ่าและไหล่มักมีสาเหตุมาจากการเกร็งกล้ามเนื้อซ้ำๆ การนอนตะแคงอาจทำให้เกิดการกดทับและบาดเจ็บของกล้ามเนื้อด้านที่มีอาการปวดได้ จึงแนะนำให้นอนหงายเพื่อหลีกเลี่ยงการกดทับที่บริเวณไหล่ ปล่อยให้กล้ามเนื้อได้รับการซ่อมแซมอย่างเต็มที่\n\n3. ท่านอนที่ถูกต้องสำหรับผู้หญิงตั้งครรภ์\nผู้หญิงที่กำลังตั้งครรภ์ควรให้ความสำคัญในเรื่องของท่านอนเช่นกัน ซึ่งท่านอนคนท้องที่ถูกต้องคือการนอนตะแคงซ้าย เพราะจะไม่ทำให้คุณแม่รู้สึกตึงและถ่วงท้องมากเกินไป อีกทั้งป้องกันไม่ให้มดลูกกดทับเส้นเลือดดำใหญ่ ทำให้เลือดจากขาไหลย้อนกลับเข้าสู่หัวใจได้ดีขึ้น\n\n4. ท่านอนที่ถูกต้องสำหรับผู้ที่นอนกรน\nสำหรับผู้ที่นอนกรนแนะนำให้นอนท่าตะแคงซ้ายหรือขวาก็ได้ หลีกเลี่ยงการนอนหงายเพราะจะทำให้ทางเดินหายใจตีบหรือตัน นำไปสู่อาการหยุดหายใจขณะหลับได้\n\n5. ท่านอนที่ถูกต้องสำหรับคนปวดท้องประจำเดือน\nผู้หญิงที่มีอาการปวดท้องระหว่างมีประจำเดือน ลองปรับท่านอนให้อยู่ในท่าที่ผ่อนคลายโดยแนะนำให้นอนตะแคงงอเข่า 2 ข้าง การนอนในท่านี้จะทำให้กล้ามเนื้อบริเวณท้องน้อยรู้สึกผ่อนคลาย ไม่กดทับหรือรู้สึกเกร็งอยู่นั่นเอง\n\n6. ท่านอนที่ถูกต้องสำหรับผู้ที่เป็นกรดไหลย้อน\nอาการกรดไหลย้อนมักเกิดหลังรับประทานอาหาร ดังนั้นหากรับประทานอาหารเสร็จแล้วไม่ควรนอนทันที แนะนำให้นอนยกหัวสูงอย่างน้อย 3 ชั่วโมงหลังรับประทานอาหาร เพื่อช่วยลดการไหลย้อนกลับของน้ำย่อยและอาหารในกระเพาะอาหาร ลดอาการแสบร้อนกลางอกได้',
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
      ),
    );
  }
}
