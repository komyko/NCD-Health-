import 'package:flutter/material.dart';
import '/backend/backend.dart';
import '/backend/schema/structs/index.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'flutter_flow/flutter_flow_util.dart';

class FFAppState extends ChangeNotifier {
  static FFAppState _instance = FFAppState._internal();

  factory FFAppState() {
    return _instance;
  }

  FFAppState._internal();

  static void reset() {
    _instance = FFAppState._internal();
  }

  Future initializePersistedState() async {
    prefs = await SharedPreferences.getInstance();
    _safeInit(() {
      if (prefs.containsKey('ff_numPoint')) {
        try {
          final serializedData = prefs.getString('ff_numPoint') ?? '{}';
          _numPoint =
              StressPointStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _stressHover =
          _colorFromIntValue(prefs.getInt('ff_stressHover')) ?? _stressHover;
    });
    _safeInit(() {
      _stressColorHover =
          _colorFromIntValue(prefs.getInt('ff_stressColorHover')) ??
              _stressColorHover;
    });
    _safeInit(() {
      _stresspic1 = prefs.getString('ff_stresspic1') ?? _stresspic1;
    });
    _safeInit(() {
      _stresspic2 = prefs.getString('ff_stresspic2') ?? _stresspic2;
    });
    _safeInit(() {
      _stresspic3 = prefs.getString('ff_stresspic3') ?? _stresspic3;
    });
    _safeInit(() {
      _stresspic4 = prefs.getString('ff_stresspic4') ?? _stresspic4;
    });
    _safeInit(() {
      _stresspic5 = prefs.getString('ff_stresspic5') ?? _stresspic5;
    });
    _safeInit(() {
      _sleeppic1 = prefs.getString('ff_sleeppic1') ?? _sleeppic1;
    });
    _safeInit(() {
      _sleeppic2 = prefs.getString('ff_sleeppic2') ?? _sleeppic2;
    });
    _safeInit(() {
      _sleeppic3 = prefs.getString('ff_sleeppic3') ?? _sleeppic3;
    });
    _safeInit(() {
      _sleeppic4 = prefs.getString('ff_sleeppic4') ?? _sleeppic4;
    });
    _safeInit(() {
      _sleeppic5 = prefs.getString('ff_sleeppic5') ?? _sleeppic5;
    });
    _safeInit(() {
      _stresstext1 = prefs.getString('ff_stresstext1') ?? _stresstext1;
    });
    _safeInit(() {
      _stresstext2 = prefs.getString('ff_stresstext2') ?? _stresstext2;
    });
    _safeInit(() {
      _strees3 = prefs.getString('ff_strees3') ?? _strees3;
    });
    _safeInit(() {
      _sleeptext1 = prefs.getString('ff_sleeptext1') ?? _sleeptext1;
    });
    _safeInit(() {
      _sleeptext2 = prefs.getString('ff_sleeptext2') ?? _sleeptext2;
    });
    _safeInit(() {
      _sleeptext3 = prefs.getString('ff_sleeptext3') ?? _sleeptext3;
    });
    _safeInit(() {
      _sleeptext4 = prefs.getString('ff_sleeptext4') ?? _sleeptext4;
    });
    _safeInit(() {
      _sleeptext5 = prefs.getString('ff_sleeptext5') ?? _sleeptext5;
    });
    _safeInit(() {
      _sleeptext6 = prefs.getString('ff_sleeptext6') ?? _sleeptext6;
    });
    _safeInit(() {
      _sleeptext7 = prefs.getString('ff_sleeptext7') ?? _sleeptext7;
    });
    _safeInit(() {
      _stresst1 = prefs.getString('ff_stresst1') ?? _stresst1;
    });
    _safeInit(() {
      _stresst2 = prefs.getString('ff_stresst2') ?? _stresst2;
    });
    _safeInit(() {
      _stresst3 = prefs.getString('ff_stresst3') ?? _stresst3;
    });
    _safeInit(() {
      _stresst4 = prefs.getString('ff_stresst4') ?? _stresst4;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_food')) {
        try {
          final serializedData = prefs.getString('ff_food') ?? '{}';
          _food = SumfoodStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_sumage1')) {
        try {
          final serializedData = prefs.getString('ff_sumage1') ?? '{}';
          _sumage1 =
              ProfileeeStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_sumtall1')) {
        try {
          final serializedData = prefs.getString('ff_sumtall1') ?? '{}';
          _sumtall1 =
              ProfileeeStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_sumweight1')) {
        try {
          final serializedData = prefs.getString('ff_sumweight1') ?? '{}';
          _sumweight1 =
              ProfileeeStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_congru1')) {
        try {
          final serializedData = prefs.getString('ff_congru1') ?? '{}';
          _congru1 =
              ProfileeeStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      _labbmi1 = prefs.getString('ff_labbmi1') ?? _labbmi1;
    });
    _safeInit(() {
      _labbmi2 = prefs.getString('ff_labbmi2') ?? _labbmi2;
    });
    _safeInit(() {
      _labbmi3 = prefs.getString('ff_labbmi3') ?? _labbmi3;
    });
    _safeInit(() {
      _labbmi4 = prefs.getString('ff_labbmi4') ?? _labbmi4;
    });
    _safeInit(() {
      _labbmi5 = prefs.getString('ff_labbmi5') ?? _labbmi5;
    });
    _safeInit(() {
      _labfbs1 = prefs.getString('ff_labfbs1') ?? _labfbs1;
    });
    _safeInit(() {
      _labfbs2 = prefs.getString('ff_labfbs2') ?? _labfbs2;
    });
    _safeInit(() {
      _labfbs3 = prefs.getString('ff_labfbs3') ?? _labfbs3;
    });
    _safeInit(() {
      _labtg1 = prefs.getString('ff_labtg1') ?? _labtg1;
    });
    _safeInit(() {
      _labtg2 = prefs.getString('ff_labtg2') ?? _labtg2;
    });
    _safeInit(() {
      _labtg3 = prefs.getString('ff_labtg3') ?? _labtg3;
    });
    _safeInit(() {
      _labtg4 = prefs.getString('ff_labtg4') ?? _labtg4;
    });
    _safeInit(() {
      _labldl1 = prefs.getString('ff_labldl1') ?? _labldl1;
    });
    _safeInit(() {
      _labldl2 = prefs.getString('ff_labldl2') ?? _labldl2;
    });
    _safeInit(() {
      _labldl3 = prefs.getString('ff_labldl3') ?? _labldl3;
    });
    _safeInit(() {
      _labldl4 = prefs.getString('ff_labldl4') ?? _labldl4;
    });
    _safeInit(() {
      _labldl5 = prefs.getString('ff_labldl5') ?? _labldl5;
    });
    _safeInit(() {
      _labsgt1 = prefs.getString('ff_labsgt1') ?? _labsgt1;
    });
    _safeInit(() {
      _labsgt2 = prefs.getString('ff_labsgt2') ?? _labsgt2;
    });
    _safeInit(() {
      _labcr1 = prefs.getString('ff_labcr1') ?? _labcr1;
    });
    _safeInit(() {
      _labcr2 = prefs.getString('ff_labcr2') ?? _labcr2;
    });
    _safeInit(() {
      _labcr3 = prefs.getString('ff_labcr3') ?? _labcr3;
    });
    _safeInit(() {
      _foodtext1 = prefs.getString('ff_foodtext1') ?? _foodtext1;
    });
    _safeInit(() {
      _foodtext2 = prefs.getString('ff_foodtext2') ?? _foodtext2;
    });
    _safeInit(() {
      _foodtext3 = prefs.getString('ff_foodtext3') ?? _foodtext3;
    });
    _safeInit(() {
      _labgfr1 = prefs.getString('ff_labgfr1') ?? _labgfr1;
    });
    _safeInit(() {
      _labgfr2 = prefs.getString('ff_labgfr2') ?? _labgfr2;
    });
    _safeInit(() {
      _labgfr3 = prefs.getString('ff_labgfr3') ?? _labgfr3;
    });
    _safeInit(() {
      _labgfr4 = prefs.getString('ff_labgfr4') ?? _labgfr4;
    });
    _safeInit(() {
      _labgfr5 = prefs.getString('ff_labgfr5') ?? _labgfr5;
    });
    _safeInit(() {
      _labbp1 = prefs.getString('ff_labbp1') ?? _labbp1;
    });
    _safeInit(() {
      _labbp2 = prefs.getString('ff_labbp2') ?? _labbp2;
    });
    _safeInit(() {
      _labbp3 = prefs.getString('ff_labbp3') ?? _labbp3;
    });
    _safeInit(() {
      _labbp4 = prefs.getString('ff_labbp4') ?? _labbp4;
    });
    _safeInit(() {
      _labbp5 = prefs.getString('ff_labbp5') ?? _labbp5;
    });
    _safeInit(() {
      _labbp6 = prefs.getString('ff_labbp6') ?? _labbp6;
    });
    _safeInit(() {
      if (prefs.containsKey('ff_exercise')) {
        try {
          final serializedData = prefs.getString('ff_exercise') ?? '{}';
          _exercise =
              SumfoodStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
    _safeInit(() {
      if (prefs.containsKey('ff_sleep')) {
        try {
          final serializedData = prefs.getString('ff_sleep') ?? '{}';
          _sleep =
              SumfoodStruct.fromSerializableMap(jsonDecode(serializedData));
        } catch (e) {
          print("Can't decode persisted data type. Error: $e.");
        }
      }
    });
  }

  void update(VoidCallback callback) {
    callback();
    notifyListeners();
  }

  late SharedPreferences prefs;

  StressPointStruct _numPoint = StressPointStruct();
  StressPointStruct get numPoint => _numPoint;
  set numPoint(StressPointStruct value) {
    _numPoint = value;
    prefs.setString('ff_numPoint', value.serialize());
  }

  void updateNumPointStruct(Function(StressPointStruct) updateFn) {
    updateFn(_numPoint);
    prefs.setString('ff_numPoint', _numPoint.serialize());
  }

  Color _stressHover = const Color(0xffee8b60);
  Color get stressHover => _stressHover;
  set stressHover(Color value) {
    _stressHover = value;
    prefs.setInt('ff_stressHover', value.value);
  }

  Color _stressColorHover = const Color(0xffdb6060);
  Color get stressColorHover => _stressColorHover;
  set stressColorHover(Color value) {
    _stressColorHover = value;
    prefs.setInt('ff_stressColorHover', value.value);
  }

  String _stresspic1 =
      'https://images.unsplash.com/photo-1714238473165-5c81dd410d2f?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get stresspic1 => _stresspic1;
  set stresspic1(String value) {
    _stresspic1 = value;
    prefs.setString('ff_stresspic1', value);
  }

  String _stresspic2 =
      'https://images.unsplash.com/photo-1714238473150-1a17162dc65e?q=80&w=1480&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get stresspic2 => _stresspic2;
  set stresspic2(String value) {
    _stresspic2 = value;
    prefs.setString('ff_stresspic2', value);
  }

  String _stresspic3 =
      'https://images.unsplash.com/photo-1714238473141-abe5b79d35c7?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get stresspic3 => _stresspic3;
  set stresspic3(String value) {
    _stresspic3 = value;
    prefs.setString('ff_stresspic3', value);
  }

  String _stresspic4 =
      'https://images.unsplash.com/photo-1714238473141-abe5b79d35c7?q=80&w=1476&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get stresspic4 => _stresspic4;
  set stresspic4(String value) {
    _stresspic4 = value;
    prefs.setString('ff_stresspic4', value);
  }

  String _stresspic5 =
      'https://images.unsplash.com/photo-1714238473156-4481d779683d?q=80&w=1483&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get stresspic5 => _stresspic5;
  set stresspic5(String value) {
    _stresspic5 = value;
    prefs.setString('ff_stresspic5', value);
  }

  String _sleeppic1 =
      'https://images.unsplash.com/photo-1712417193759-bed8e4729d01?q=80&w=2076&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get sleeppic1 => _sleeppic1;
  set sleeppic1(String value) {
    _sleeppic1 = value;
    prefs.setString('ff_sleeppic1', value);
  }

  String _sleeppic2 =
      'https://images.unsplash.com/photo-1712417193778-bf98a27a125b?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get sleeppic2 => _sleeppic2;
  set sleeppic2(String value) {
    _sleeppic2 = value;
    prefs.setString('ff_sleeppic2', value);
  }

  String _sleeppic3 =
      'https://images.unsplash.com/photo-1712417193775-e813911147f7?q=80&w=2078&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get sleeppic3 => _sleeppic3;
  set sleeppic3(String value) {
    _sleeppic3 = value;
    prefs.setString('ff_sleeppic3', value);
  }

  String _sleeppic4 =
      'https://images.unsplash.com/photo-1712417193783-ae1b794313e8?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get sleeppic4 => _sleeppic4;
  set sleeppic4(String value) {
    _sleeppic4 = value;
    prefs.setString('ff_sleeppic4', value);
  }

  String _sleeppic5 =
      'https://images.unsplash.com/photo-1712417193760-da417a703bd8?q=80&w=2080&auto=format&fit=crop&ixlib=rb-4.0.3&ixid=M3wxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8fA%3D%3D';
  String get sleeppic5 => _sleeppic5;
  set sleeppic5(String value) {
    _sleeppic5 = value;
    prefs.setString('ff_sleeppic5', value);
  }

  String _stresstext1 =
      'คำเตือน : คุณควรมีการพักผ่อนสักครู่เพื่อให้เครียดน้อยลง';
  String get stresstext1 => _stresstext1;
  set stresstext1(String value) {
    _stresstext1 = value;
    prefs.setString('ff_stresstext1', value);
  }

  String _stresstext2 =
      'คำเตือน : ความเครียดที่มากส่งผลให้มีความเสี่ยงให้เกิดโรคความดันโลหิตสูง โรคหลอดเลือดสมอง โรคหัวใจ และ โรคมะเร็งมากขึ้นได้';
  String get stresstext2 => _stresstext2;
  set stresstext2(String value) {
    _stresstext2 = value;
    prefs.setString('ff_stresstext2', value);
  }

  String _strees3 = 'ความเครียดของคุณอยู่ในระดับไม่มาก';
  String get strees3 => _strees3;
  set strees3(String value) {
    _strees3 = value;
    prefs.setString('ff_strees3', value);
  }

  String _sleeptext1 =
      'คำเตือน : การพักผ่อนที่ไม่เพียงพอ อาจส่งผลให้ เกิดโรคเบาหวาน โรคหัวใจ หรือ โรคที่เกี่ยวกับหลอดเลือดได้เพิ่มขี้นได้';
  String get sleeptext1 => _sleeptext1;
  set sleeptext1(String value) {
    _sleeptext1 = value;
    prefs.setString('ff_sleeptext1', value);
  }

  String _sleeptext2 = 'การนอนคุณอยู่ในระดับแย่มาก';
  String get sleeptext2 => _sleeptext2;
  set sleeptext2(String value) {
    _sleeptext2 = value;
    prefs.setString('ff_sleeptext2', value);
  }

  String _sleeptext3 = 'การนอนคุณอยู่ในระดับพอใช้';
  String get sleeptext3 => _sleeptext3;
  set sleeptext3(String value) {
    _sleeptext3 = value;
    prefs.setString('ff_sleeptext3', value);
  }

  String _sleeptext4 = 'การนอนคุณอยู่ในระดับดี';
  String get sleeptext4 => _sleeptext4;
  set sleeptext4(String value) {
    _sleeptext4 = value;
    prefs.setString('ff_sleeptext4', value);
  }

  String _sleeptext5 = 'การนอนคุณอยู่ในระดับดีมาก';
  String get sleeptext5 => _sleeptext5;
  set sleeptext5(String value) {
    _sleeptext5 = value;
    prefs.setString('ff_sleeptext5', value);
  }

  String _sleeptext6 = 'การนอนคุณอยู่ในระดับแย่';
  String get sleeptext6 => _sleeptext6;
  set sleeptext6(String value) {
    _sleeptext6 = value;
    prefs.setString('ff_sleeptext6', value);
  }

  String _sleeptext7 = '';
  String get sleeptext7 => _sleeptext7;
  set sleeptext7(String value) {
    _sleeptext7 = value;
    prefs.setString('ff_sleeptext7', value);
  }

  String _stresst1 = 'ความเครียดน้อย';
  String get stresst1 => _stresst1;
  set stresst1(String value) {
    _stresst1 = value;
    prefs.setString('ff_stresst1', value);
  }

  String _stresst2 = 'ความเครียดปานกลาง';
  String get stresst2 => _stresst2;
  set stresst2(String value) {
    _stresst2 = value;
    prefs.setString('ff_stresst2', value);
  }

  String _stresst3 = 'ความเครียดมาก';
  String get stresst3 => _stresst3;
  set stresst3(String value) {
    _stresst3 = value;
    prefs.setString('ff_stresst3', value);
  }

  String _stresst4 = 'ความเครียดมากที่สุด';
  String get stresst4 => _stresst4;
  set stresst4(String value) {
    _stresst4 = value;
    prefs.setString('ff_stresst4', value);
  }

  SumfoodStruct _food = SumfoodStruct();
  SumfoodStruct get food => _food;
  set food(SumfoodStruct value) {
    _food = value;
    prefs.setString('ff_food', value.serialize());
  }

  void updateFoodStruct(Function(SumfoodStruct) updateFn) {
    updateFn(_food);
    prefs.setString('ff_food', _food.serialize());
  }

  ProfileeeStruct _sumage1 = ProfileeeStruct();
  ProfileeeStruct get sumage1 => _sumage1;
  set sumage1(ProfileeeStruct value) {
    _sumage1 = value;
    prefs.setString('ff_sumage1', value.serialize());
  }

  void updateSumage1Struct(Function(ProfileeeStruct) updateFn) {
    updateFn(_sumage1);
    prefs.setString('ff_sumage1', _sumage1.serialize());
  }

  ProfileeeStruct _sumtall1 = ProfileeeStruct();
  ProfileeeStruct get sumtall1 => _sumtall1;
  set sumtall1(ProfileeeStruct value) {
    _sumtall1 = value;
    prefs.setString('ff_sumtall1', value.serialize());
  }

  void updateSumtall1Struct(Function(ProfileeeStruct) updateFn) {
    updateFn(_sumtall1);
    prefs.setString('ff_sumtall1', _sumtall1.serialize());
  }

  ProfileeeStruct _sumweight1 = ProfileeeStruct();
  ProfileeeStruct get sumweight1 => _sumweight1;
  set sumweight1(ProfileeeStruct value) {
    _sumweight1 = value;
    prefs.setString('ff_sumweight1', value.serialize());
  }

  void updateSumweight1Struct(Function(ProfileeeStruct) updateFn) {
    updateFn(_sumweight1);
    prefs.setString('ff_sumweight1', _sumweight1.serialize());
  }

  ProfileeeStruct _congru1 = ProfileeeStruct();
  ProfileeeStruct get congru1 => _congru1;
  set congru1(ProfileeeStruct value) {
    _congru1 = value;
    prefs.setString('ff_congru1', value.serialize());
  }

  void updateCongru1Struct(Function(ProfileeeStruct) updateFn) {
    updateFn(_congru1);
    prefs.setString('ff_congru1', _congru1.serialize());
  }

  String _labbmi1 = 'ต่ำกว่าเกณฑ์';
  String get labbmi1 => _labbmi1;
  set labbmi1(String value) {
    _labbmi1 = value;
    prefs.setString('ff_labbmi1', value);
  }

  String _labbmi2 = 'ปกติสมส่วน';
  String get labbmi2 => _labbmi2;
  set labbmi2(String value) {
    _labbmi2 = value;
    prefs.setString('ff_labbmi2', value);
  }

  String _labbmi3 = 'น้ำหนักเกิน';
  String get labbmi3 => _labbmi3;
  set labbmi3(String value) {
    _labbmi3 = value;
    prefs.setString('ff_labbmi3', value);
  }

  String _labbmi4 = 'อ้วนระดับ1';
  String get labbmi4 => _labbmi4;
  set labbmi4(String value) {
    _labbmi4 = value;
    prefs.setString('ff_labbmi4', value);
  }

  String _labbmi5 = 'อ้วนระดับ2';
  String get labbmi5 => _labbmi5;
  set labbmi5(String value) {
    _labbmi5 = value;
    prefs.setString('ff_labbmi5', value);
  }

  String _labfbs1 = 'อยู่ในภาวะปกติ';
  String get labfbs1 => _labfbs1;
  set labfbs1(String value) {
    _labfbs1 = value;
    prefs.setString('ff_labfbs1', value);
  }

  String _labfbs2 = 'มีภาวะความเสี่ยง หรือ เรียกว่าเบาหวานแฝง';
  String get labfbs2 => _labfbs2;
  set labfbs2(String value) {
    _labfbs2 = value;
    prefs.setString('ff_labfbs2', value);
  }

  String _labfbs3 = 'เสี่ยงเป็นเบาหวาน';
  String get labfbs3 => _labfbs3;
  set labfbs3(String value) {
    _labfbs3 = value;
    prefs.setString('ff_labfbs3', value);
  }

  String _labtg1 = 'ปกติ';
  String get labtg1 => _labtg1;
  set labtg1(String value) {
    _labtg1 = value;
    prefs.setString('ff_labtg1', value);
  }

  String _labtg2 = 'ค่อนข้างสูงมาก';
  String get labtg2 => _labtg2;
  set labtg2(String value) {
    _labtg2 = value;
    prefs.setString('ff_labtg2', value);
  }

  String _labtg3 = 'สูง';
  String get labtg3 => _labtg3;
  set labtg3(String value) {
    _labtg3 = value;
    prefs.setString('ff_labtg3', value);
  }

  String _labtg4 = 'สูงมาก';
  String get labtg4 => _labtg4;
  set labtg4(String value) {
    _labtg4 = value;
    prefs.setString('ff_labtg4', value);
  }

  String _labldl1 = 'ค่าที่เหมาะสมที่สุด';
  String get labldl1 => _labldl1;
  set labldl1(String value) {
    _labldl1 = value;
    prefs.setString('ff_labldl1', value);
  }

  String _labldl2 = 'ใกล้เคียงค่าที่เหมาะสมแต่ยังสูงไปนิด';
  String get labldl2 => _labldl2;
  set labldl2(String value) {
    _labldl2 = value;
    prefs.setString('ff_labldl2', value);
  }

  String _labldl3 = 'สูงเล็กน้อย';
  String get labldl3 => _labldl3;
  set labldl3(String value) {
    _labldl3 = value;
    prefs.setString('ff_labldl3', value);
  }

  String _labldl4 = 'สูง';
  String get labldl4 => _labldl4;
  set labldl4(String value) {
    _labldl4 = value;
    prefs.setString('ff_labldl4', value);
  }

  String _labldl5 = 'สูงมาก';
  String get labldl5 => _labldl5;
  set labldl5(String value) {
    _labldl5 = value;
    prefs.setString('ff_labldl5', value);
  }

  String _labsgt1 = 'ค่าปกติ';
  String get labsgt1 => _labsgt1;
  set labsgt1(String value) {
    _labsgt1 = value;
    prefs.setString('ff_labsgt1', value);
  }

  String _labsgt2 = 'ค่าไม่ปกติ';
  String get labsgt2 => _labsgt2;
  set labsgt2(String value) {
    _labsgt2 = value;
    prefs.setString('ff_labsgt2', value);
  }

  String _labcr1 =
      'ต่ำกว่าปกติ กล้ามเนื้อและเส้นประสาท\nไม่ได้รับการบริหารได้อย่างมีประสิทธิภาพ';
  String get labcr1 => _labcr1;
  set labcr1(String value) {
    _labcr1 = value;
    prefs.setString('ff_labcr1', value);
  }

  String _labcr2 = 'ค่าปกติ';
  String get labcr2 => _labcr2;
  set labcr2(String value) {
    _labcr2 = value;
    prefs.setString('ff_labcr2', value);
  }

  String _labcr3 =
      'สูงกว่าปกติ คือมีสิ่งอุดตันในระบบปัสสาวะ\nอย่างนิ่ว และ ภาวะขาดน้ำ';
  String get labcr3 => _labcr3;
  set labcr3(String value) {
    _labcr3 = value;
    prefs.setString('ff_labcr3', value);
  }

  String _foodtext1 = 'คุณบริโภคจำนวนแคลอรี่อยู่ในเกณฑ์ปกติ';
  String get foodtext1 => _foodtext1;
  set foodtext1(String value) {
    _foodtext1 = value;
    prefs.setString('ff_foodtext1', value);
  }

  String _foodtext2 =
      'คุณมีจำนวนแคลอรี่ต่อวันมากเกินไป \nมีความเสี่ยงต่อการเกิดโรคไม่ติดต่อเรื้อรัง \nเช่น โรคอ้วน โรคความดัน โรคเบาหวาน';
  String get foodtext2 => _foodtext2;
  set foodtext2(String value) {
    _foodtext2 = value;
    prefs.setString('ff_foodtext2', value);
  }

  String _foodtext3 =
      'การทานอาหารที่มีแคลอรี่สูงทำให้\nมีความเสี่ยงการเป็นโรคไม่ติดต่อเรื้อรัง';
  String get foodtext3 => _foodtext3;
  set foodtext3(String value) {
    _foodtext3 = value;
    prefs.setString('ff_foodtext3', value);
  }

  String _labgfr1 =
      'การทำงานของไตทำงานปกติแต่ค้นพบสิ่ง\nแปลกปลอมในการทำงานของไต \nเช่น นิ่ว กรวยไตอักเสบไตบวม';
  String get labgfr1 => _labgfr1;
  set labgfr1(String value) {
    _labgfr1 = value;
    prefs.setString('ff_labgfr1', value);
  }

  String _labgfr2 = 'การทำงานของไตมีผิดปกติเล็กน้อย';
  String get labgfr2 => _labgfr2;
  set labgfr2(String value) {
    _labgfr2 = value;
    prefs.setString('ff_labgfr2', value);
  }

  String _labgfr3 = 'การทำงานของไตทำงานปลานกลาง';
  String get labgfr3 => _labgfr3;
  set labgfr3(String value) {
    _labgfr3 = value;
    prefs.setString('ff_labgfr3', value);
  }

  String _labgfr4 = 'การทำงานของไตทำงานผิดปกติมาก';
  String get labgfr4 => _labgfr4;
  set labgfr4(String value) {
    _labgfr4 = value;
    prefs.setString('ff_labgfr4', value);
  }

  String _labgfr5 = 'การทำงานของไตอยู่ภาวะไตวาย';
  String get labgfr5 => _labgfr5;
  set labgfr5(String value) {
    _labgfr5 = value;
    prefs.setString('ff_labgfr5', value);
  }

  String _labbp1 = 'ความดันโลหิตที่ดี';
  String get labbp1 => _labbp1;
  set labbp1(String value) {
    _labbp1 = value;
    prefs.setString('ff_labbp1', value);
  }

  String _labbp2 = 'ความดันโลหิตปกติ';
  String get labbp2 => _labbp2;
  set labbp2(String value) {
    _labbp2 = value;
    prefs.setString('ff_labbp2', value);
  }

  String _labbp3 = 'ความดันโลหิตค่อนข้างสูง';
  String get labbp3 => _labbp3;
  set labbp3(String value) {
    _labbp3 = value;
    prefs.setString('ff_labbp3', value);
  }

  String _labbp4 = 'ความดันโลหิตสูงเล็กน้อย (ระยะที่1)';
  String get labbp4 => _labbp4;
  set labbp4(String value) {
    _labbp4 = value;
    prefs.setString('ff_labbp4', value);
  }

  String _labbp5 = 'ความดันโลหิตสูงปานกลาง (ระยะที่2)';
  String get labbp5 => _labbp5;
  set labbp5(String value) {
    _labbp5 = value;
    prefs.setString('ff_labbp5', value);
  }

  String _labbp6 = 'ความดันโลหิตสูงมาก (ระยะที่3)';
  String get labbp6 => _labbp6;
  set labbp6(String value) {
    _labbp6 = value;
    prefs.setString('ff_labbp6', value);
  }

  SumfoodStruct _exercise = SumfoodStruct();
  SumfoodStruct get exercise => _exercise;
  set exercise(SumfoodStruct value) {
    _exercise = value;
    prefs.setString('ff_exercise', value.serialize());
  }

  void updateExerciseStruct(Function(SumfoodStruct) updateFn) {
    updateFn(_exercise);
    prefs.setString('ff_exercise', _exercise.serialize());
  }

  SumfoodStruct _sleep = SumfoodStruct();
  SumfoodStruct get sleep => _sleep;
  set sleep(SumfoodStruct value) {
    _sleep = value;
    prefs.setString('ff_sleep', value.serialize());
  }

  void updateSleepStruct(Function(SumfoodStruct) updateFn) {
    updateFn(_sleep);
    prefs.setString('ff_sleep', _sleep.serialize());
  }
}

void _safeInit(Function() initializeField) {
  try {
    initializeField();
  } catch (_) {}
}

Future _safeInitAsync(Function() initializeField) async {
  try {
    await initializeField();
  } catch (_) {}
}

Color? _colorFromIntValue(int? val) {
  if (val == null) {
    return null;
  }
  return Color(val);
}
