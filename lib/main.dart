import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_temel_widgets/image_widget.dart';
import 'package:flutter_temel_widgets/my_counter_page.dart';


void main(){
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "My Counter App",
       theme: ThemeData(appBarTheme: AppBarTheme(color: Colors.pink[200],),
      ),
       home: Scaffold(
        appBar: AppBar(
          title: Text("Image Ornekleri"),
        ),
        body: ImageOrnekleri(),
       ),
    );
  }
}


