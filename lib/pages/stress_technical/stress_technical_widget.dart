import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'dart:ui';
import 'package:flutter/material.dart';
import 'stress_technical_model.dart';
export 'stress_technical_model.dart';

class StressTechnicalWidget extends StatefulWidget {
  const StressTechnicalWidget({super.key});

  @override
  State<StressTechnicalWidget> createState() => _StressTechnicalWidgetState();
}

class _StressTechnicalWidgetState extends State<StressTechnicalWidget> {
  late StressTechnicalModel _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => StressTechnicalModel());

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
              'เทคนิคลดความเครียด',
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
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                SingleChildScrollView(
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
                              'assets/images/istock_000041303030_small.jpg',
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
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        crossAxisAlignment:
                                            CrossAxisAlignment.center,
                                        children: [
                                          Padding(
                                            padding:
                                                const EdgeInsetsDirectional.fromSTEB(
                                                    5.0, 0.0, 0.0, 0.0),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.max,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              children: [
                                                Padding(
                                                  padding: const EdgeInsetsDirectional
                                                      .fromSTEB(
                                                          0.0, 0.0, 0.0, 2.0),
                                                  child: Text(
                                                    'คำแนะนำและวิธีการลดความเครียด',
                                                    style: FlutterFlowTheme.of(
                                                            context)
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
                                                  'กำจัดความเครียด',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily: 'Raleway',
                                                        color: Colors.white,
                                                        fontSize: 15.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
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
                        height: 12.0,
                        decoration: const BoxDecoration(
                          color: Colors.white,
                        ),
                      ),
                      Padding(
                        padding:
                            const EdgeInsetsDirectional.fromSTEB(0.0, 0.0, 0.0, 5.0),
                        child: Container(
                          width: 282.0,
                          height: 47.0,
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
                                      'วิธีจัดการความเครียด 10 วิธีดังนี้',
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
                      ),
                      Align(
                        alignment: const AlignmentDirectional(-1.0, 0.0),
                        child: Padding(
                          padding: const EdgeInsets.all(10.0),
                          child: Text(
                            '1. แก้ที่สาเหตุความเครียด\n\nวิธีจัดการความเครียดโดยการแก้ที่สาเหตุหรือเรื่องที่ทำให้เราเกิดความเครียดนั้น เป็นการแก้ความเครียดที่ต้นตอ อย่างแรกที่ต้องจัดการคือเราต้องมีสติในการแก้ไขปัญหา ไม่โทษตัวเองหรือคนอื่น แต่ให้พยายามหาแนวทางการแก้ไขปัญหา และรับยอมว่าบางสิ่งนั้นอยู่เหนือการควบคุมของเราและเรียนรู้จากปัญหาที่เกิดขึ้นเพื่อลดการเกิดปัญหาในอนาคตต่อไป\n\n2. ออกกำลังกาย\n\nการออกกำลังกายเป็นวิธีจัดการความเครียดที่จะช่วยให้ร่างกายหลั่งฮอร์โมนเอ็นดอร์ฟิน (Endorphin) หรือสารแห่งความสุข ทำให้เรารู้สึกมีความสุข เคลิบเคลิ้ม อิ่มอกอิ่มใจ คลายเครียด อยากอาหารมากขึ้น ช่วยหลั่งฮอร์โมนเพศ และเสริมสร้างการทำงานของระบบภูมิคุ้มกัน อย่างไรก็ตามการออกกำลังกายเพื่อลดความเครียดนั้นไม่จำเป็นต้องเป็นการออกกำลังกายที่ใช้แรงมากหรือออกอย่างหนัก สามารถออกกำลังกายเบา ๆ อย่างการเดินเล่น ปั่นจักรยาน หรือเล่นโยคะเบา ๆ ก็ช่วยเบี่ยงเบนสมองของเราจากความเครียดได้แล้ว \n\n3. ทานอาหารที่สามารถช่วยลดความเครียด\n\nนอกจากการปรับเปลี่ยนพฤติกรรมทางด้านร่างกายแล้ว พฤติกรรมการรับประทานอาหารก็เป็นวิธีจัดการความเครียดอย่างหนึ่งที่สำคัญเช่นกัน ลองหันมารับประทานอาหารเหล่านี้เพื่อช่วยลดความเครียด\n\n4. ลดการนอนดึก เข้านอนเวลาสม่ำเสมอ\n\nการนอนเป็นวิธีจัดการความเครียดที่หลายคนเลือกใช้ แต่เราต้องนอนให้มีคุณภาพด้วย การพักผ่อนเป็นสิ่งสำคัญอย่างมากสำหรับร่างกายและจิตใจ แม้เราจะนอนครบ 8 ชั่วโมงแต่เข้านอนดึกมากเกินไป ย่อมไม่ดีต่อสุขภาพแน่นอน สำหรับช่วงเวลาที่ควรเข้านอนมากที่สุดคือตั้งแต่ 20.00-22.00 น. เมื่อนอนหลับพักผ่อนเพียงพอแล้วจะช่วยให้เราตื่นมาอย่างสดชื่น สมองปลอดโปร่ง มีสติจัดการกับปัญหา \n\n5. จัดสรรเวลา\n\nการแบ่งเวลายังคงเป็นเรื่องสำคัญเสมอ หากจะมองหาวิธีจัดการความเครียดอย่าลืมคิดย้อนว่าเราแบ่งเวลาในชีวิตอย่างไรในตอนนี้ การแบ่งเวลาที่ดีคือควรแบ่งเวลาการทำงานและเวลาส่วนตัวอย่างชัดเจน หลังเวลาทำงานควรเป็นเวลาพักผ่อน ทำกิจกรรมคลายเครียดและไม่นึกกังวลถึงเรื่องงาน ไม่เอาความเครียดที่สะสมตกค้างจากการทำงานไประบายหรือใช้อารมณ์กับคนรอบข้าง \n\n6. พักสายตา ลดการใช้คอมพิวเตอร์ มือถือ\n\nปัจจุบันมีกระแสการทำ Social Media Detox หรือ การบำบัดการเสพติดเทคโนโลยีหรือสื่อออนไลน์ต่าง ๆ ด้วยการใช้โซเชียลมีเดียให้น้อยลง การทำ Social Media Detox อาจเป็นวิธีจัดการความเครียดที่เราอาจนึกไม่ถึงเพราะหลายคนอาจคิดว่าเมื่อเครียดก็ต้องผ่อนคลายด้วยการเล่นโทรศัพท์ เนื่องจากทุกวันนี้เราใช้เวลากับสื่อโซเชียลตลอดเวลา การเสพสื่อและคอมเมนต์\nต่าง ๆ ส่งผลกระทบต่อร่างกายและจิตใจจนทำให้เกิดความเครียดได้\n\n9. นั่งสมาธิ\n\nการนั่งสมาธิปรับลมหายใจเป็นวิธีจัดการความเครียดที่ดีอีกวิธีหนึ่ง ช่วยผ่อนคลายจิตใจและร่างกาย จริง ๆ แล้วการทำสมาธินั้นสามารถทำได้ทั้งการนั่งและนอน สิ่งสำคัญของการทำสมาธิ คือ การจดจ่อกับลมหายใจของตัวเองเป็นหลัก และหยุดคิดหยุดกังวลถึงเรื่องอื่น ๆ อย่างสิ้นเชิง การทำสมาธิส่งผลดีต่อร่างกายและจิตใจ ช่วยทำให้จิตสงบ เมื่อเราทำสมาธิร่างกายจะหลั่งฮอร์โมนเอ็นดอร์ฟิน (Endorphins) หรือสารแห่งความสุขออกมา ช่วยให้ระบบประสาทสมองทำงานเป็นระเบียบ การทำงานของอวัยวะมีประสิทธิภาพดีขึ้น สามารถป้องกันการเกิดโรคที่มีความสัมพันธ์กับความเครียดได้\n\n10. ระบายความเครียดให้ผู้อื่น\n\nการพูดคุยกับคนที่เราไว้ใจเป็นอีกหนึ่งวิธีจัดการความเครียดที่ดีและง่ายที่สุด การมองปัญหาจากมุมมองของเราในด้านเดียวอาจทำให้เราไม่สามารถแก้ปัญหาได้ แถมยังวิตกกังวล หนักใจ การระบายปัญหาหรือความรู้สึกของตัวเองให้กับเพื่อน คนในครอบครัว หรือคนที่เราไว้ใจฟังนอกจากจะช่วยให้เราได้ระบายความอัดอั้นแล้วยังทำให้เราได้มุมมองการแก้ปัญหา ได้ไอเดียใหม่ ๆ จากคนที่เราคุยด้วย \n\n\n\n7. ทำงานอดิเรก\n\nวิธีจัดการความเครียดด้วยการทำงานอดิเรกช่วยให้เราโฟกัสกับสิ่งที่ชื่นชอบแทนที่จะจมอยู่กับความเครียด งานอดิเรกไม่จำเป็นต้องเป็นสิ่งที่ยิ่งใหญ่ เป็นประโยชน์มากมาย อาจเป็นการดูหนัง ฟังเพลง ทำอาการ ทำงานฝีมือ งานประดิษฐ์ เล่นเกม บางครั้งการหันไปทำอย่างอื่นอาจช่วยให้เราสมองปลอดโปร่ง ได้ไอเดียในการแก้ปัญหาเพิ่มขึ้นด้วย\n\n8. งดสารเสพติด เลี่ยงแอลกอฮอลล์\n\nหลายคนอาจจะเลือกวิธีจัดการความเครียดด้วยการดื่มแอลกอฮอล์เป็นวิธีแรก ๆ แต่ที่จริงแล้ว เมื่อสารเสพติดหรือแอลกอฮอล์เข้าสู่ร่างกายไม่ว่าจะโดยการกิน ดม สูบ ฉีด จะทำให้เกิดผลต่อร่างกายและจิตใจ ต้องเพิ่มขนาดการเสพขึ้นเรื่อย ๆ และทำให้สุขภาพโดยทั่วไปจะทรุดโทรมลง ขาดสติ ',
                            style: FlutterFlowTheme.of(context)
                                .bodyMedium
                                .override(
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
              ],
            ),
          ),
        ),
      ),
    );
  }
}
