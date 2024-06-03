import '/flutter_flow/flutter_flow_icon_button.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/flutter_flow_video_player.dart';
import 'package:flutter/material.dart';
import 'trainning_action2_model.dart';
export 'trainning_action2_model.dart';

class TrainningAction2Widget extends StatefulWidget {
  const TrainningAction2Widget({super.key});

  @override
  State<TrainningAction2Widget> createState() => _TrainningAction2WidgetState();
}

class _TrainningAction2WidgetState extends State<TrainningAction2Widget>
    with TickerProviderStateMixin {
  late TrainningAction2Model _model;

  final scaffoldKey = GlobalKey<ScaffoldState>();

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => TrainningAction2Model());

    _model.tabBarController = TabController(
      vsync: this,
      length: 2,
      initialIndex: 0,
    )..addListener(() => setState(() {}));
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
            'ท่า Side Bend',
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
        body: SafeArea(
          top: true,
          child: SingleChildScrollView(
            child: Column(
              mainAxisSize: MainAxisSize.max,
              children: [
                Column(
                  mainAxisSize: MainAxisSize.max,
                  children: [
                    Container(
                      width: 393.0,
                      height: 390.0,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                      ),
                      child: const FlutterFlowVideoPlayer(
                        path: 'assets/videos/_2_(1).mp4',
                        videoType: VideoType.asset,
                        aspectRatio: 1.00,
                        autoPlay: false,
                        looping: false,
                        showControls: true,
                        allowFullScreen: false,
                        allowPlaybackSpeedMenu: false,
                        lazyLoad: false,
                      ),
                    ),
                    Column(
                      mainAxisSize: MainAxisSize.max,
                      children: [
                        Column(
                          mainAxisSize: MainAxisSize.max,
                          children: [
                            Column(
                              mainAxisSize: MainAxisSize.max,
                              children: [
                                Container(
                                  width: 391.0,
                                  height: 408.0,
                                  decoration: const BoxDecoration(
                                    color: Colors.white,
                                  ),
                                  child: Column(
                                    children: [
                                      Align(
                                        alignment: const Alignment(0.0, 0),
                                        child: TabBar(
                                          labelColor: const Color(0xFF151B1D),
                                          unselectedLabelColor:
                                              const Color(0xFF515D65),
                                          labelStyle:
                                              FlutterFlowTheme.of(context)
                                                  .titleMedium
                                                  .override(
                                                    fontFamily: 'Readex Pro',
                                                    letterSpacing: 0.0,
                                                  ),
                                          unselectedLabelStyle: const TextStyle(),
                                          indicatorColor: const Color(0xFF299F90),
                                          indicatorWeight: 2.0,
                                          padding: const EdgeInsets.all(4.0),
                                          tabs: const [
                                            Tab(
                                              text: 'คำอธิบาย',
                                            ),
                                            Tab(
                                              text: 'วิธีการออกท่าทาง',
                                            ),
                                          ],
                                          controller: _model.tabBarController,
                                          onTap: (i) async {
                                            [() async {}, () async {}][i]();
                                          },
                                        ),
                                      ),
                                      Expanded(
                                        child: TabBarView(
                                          controller: _model.tabBarController,
                                          children: [
                                            Container(
                                              width: 401.0,
                                              height: 172.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 0.0),
                                                child: Text(
                                                  'การออกกำลังกายหรือการเพิ่มความเคลื่อนไหวในชีวิตประจำวันมีผลดีต่อสุขภาพและส่งเสริมการป้องกันโรคไม่ติดต่อหลายชนิด (NCDs) อย่างสำคัญ โรคเหล่านี้รวมถึงโรคหลอดเลือดหัวใจ, ความดันโลหิตสูง, โรคเบาหวาน, และมะเร็ง การออกกำลังกายที่สม่ำเสมอช่วยเสริมสร้างระบบภูมิคุ้มกันของร่างกาย, ลดความเสี่ยงในการเป็นโรคเหล่านี้, และช่วยควบคุมน้ำหนักและรักษาสุขภาพทั่วไปให้ดีขึ้นได้ด้วย\n\nการออกกำลังกายส่งเสริมการไหลเวียนของเลือดและออกซิเจนไปยังเซลล์ต่าง ๆ ในร่างกาย ซึ่งช่วยให้ระบบหัวใจและหลอดเลือดทำงานดีขึ้น นอกจากนี้, การออกกำลังกายยังช่วยเพิ่มระดับฮอร์โมนที่มีประโยชน์ เช่น อะดรีนาลีนและเอ็นดอร์ฟิน ที่ช่วยลดความเครียดและเสริมสร้างอารมณ์ที่ดี',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyMedium
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color: Colors.black,
                                                        letterSpacing: 0.0,
                                                      ),
                                                ),
                                              ),
                                            ),
                                            Container(
                                              width: 394.0,
                                              height: 100.0,
                                              decoration: const BoxDecoration(
                                                color: Colors.white,
                                              ),
                                              child: Padding(
                                                padding: const EdgeInsetsDirectional
                                                    .fromSTEB(
                                                        10.0, 10.0, 10.0, 0.0),
                                                child: Text(
                                                  '1. ยกแขนขึ้นเหนือศรีษะ\n\n2. เอียงตัวไปทางด้านข้าง\n\n3. ทำสลับซ้ายขวา\n\n4.  ทำข้างละ 15 ครั้ง\n\n',
                                                  style: FlutterFlowTheme.of(
                                                          context)
                                                      .bodyLarge
                                                      .override(
                                                        fontFamily:
                                                            'Readex Pro',
                                                        color:
                                                            const Color(0xFF13181A),
                                                        fontSize: 18.0,
                                                        letterSpacing: 0.0,
                                                        fontWeight:
                                                            FontWeight.w500,
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
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
