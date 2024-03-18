import 'package:flutter/material.dart';

class DropdownButonOrnekleri extends StatefulWidget {
  const DropdownButonOrnekleri({super.key});

  @override
  State<DropdownButonOrnekleri> createState() => _DropdownButonOrnekleriState();
}

class _DropdownButonOrnekleriState extends State<DropdownButonOrnekleri> {
  String? _secilenSehir;

  List<String> _tumSehirler = ["ankara", "adana", "istanbul", "bursa"];

  @override
  Widget build(BuildContext context) {
    return Center(
      child: DropdownButton<String>(
        hint: Text("şehir seç"),
        icon: Icon(Icons.arrow_drop_down_circle_rounded),
        style: TextStyle(
          color: Colors.red,
        ),

        /*  items: [
          DropdownMenuItem(child: Text("bursa şehri") , value: "bursa",),
          DropdownMenuItem(child: Text("istanbul şehri") , value: "istanbul",),
          DropdownMenuItem(child: Text("izmir şehri") , value: "izmir",),
          DropdownMenuItem(child: Text("ankara şehri") , value: "ankara",),
          ], */

        items: _tumSehirler
            .map((String oankiSehir) => DropdownMenuItem(
                  child: Text(oankiSehir),
                  value: oankiSehir,
                ))
            .toList(),
        value: _secilenSehir,
        onChanged: (String? value) {
          setState(() {
            _secilenSehir = value;
          });
        },
      ),
    );
  }
}
