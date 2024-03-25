import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:flutter_temel_widgets/burclar_uyg.dart';
import 'package:flutter_temel_widgets/card_listtile.dart';
import 'package:flutter_temel_widgets/date_time_picker.dart';
import 'package:flutter_temel_widgets/diger_form_elemanlari.dart';
import 'package:flutter_temel_widgets/dropdown_button.dart';
import 'package:flutter_temel_widgets/grid_view_kullanimi.dart';
import 'package:flutter_temel_widgets/image_widget.dart';
import 'package:flutter_temel_widgets/listViewKullanimi.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';
import 'package:flutter_temel_widgets/popupmenu.dart';
import 'package:flutter_temel_widgets/stepper_kullanimi.dart';
import 'package:flutter_temel_widgets/temel_buton_turleri.dart';
import 'package:flutter_temel_widgets/text_Form_Field.dart';
import 'package:flutter_temel_widgets/text_field_islemleri.dart';

void main() {
  runApp(const MyApp());
  configLoading();
}

void configLoading() {
  EasyLoading.instance
    ..displayDuration = const Duration(milliseconds: 2000)
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    ..indicatorSize = 45.0
    ..radius = 10.0
    ..progressColor = Colors.yellow
    ..backgroundColor = Colors.green
    ..indicatorColor = Colors.yellow
    ..textColor = Colors.yellow
    ..maskColor = Colors.blue.withOpacity(0.5)
    ..userInteractions = true
    ..dismissOnTap = true;

}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
      theme: ThemeData(
        appBarTheme: AppBarTheme(
          color: Colors.pink[200],
        ),
      ),
      home: Scaffold(
        body: StepperKullanimi(),
      ),
      builder: EasyLoading.init(),
    );
  }
}
