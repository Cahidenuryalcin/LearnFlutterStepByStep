import 'package:flutter/material.dart';

class MyCounterPage extends StatefulWidget {
  const MyCounterPage({super.key});

  @override
  State<MyCounterPage> createState() => _MyCounterPageState();
}

class _MyCounterPageState extends State<MyCounterPage> {
  int _sayac = 3;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Scaffold(
        appBar: AppBar(
          title: const Text("My Counter App"),
        ),
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              MyNewTextWidget(),
              Text(
                _sayac.toString(),
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w400),
              ),
            ],
          ),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            sayaciArttir();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }

  void sayaciArttir() {
    setState(() {
      // ilgili widgetin buildi tetiklenmesini sağlar
      // bu yüzden
    });
    _sayac++;
  }
}

class MyNewTextWidget extends StatelessWidget {
  const MyNewTextWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      "Butona basılma miktarı",
      style: TextStyle(fontSize: 24),
    );
  }
}
