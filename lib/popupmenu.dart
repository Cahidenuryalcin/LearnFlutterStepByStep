import 'package:flutter/material.dart';

class PopupmenuKullanimi extends StatefulWidget {
  const PopupmenuKullanimi({super.key});

  @override
  State<PopupmenuKullanimi> createState() => _PopupmenuKullanimiState();
}

class _PopupmenuKullanimiState extends State<PopupmenuKullanimi> {
  String _secilen = "Sehir Seç";
  List<String> renkler = ["maci", "pembe", "sari", "kirmizi", "beyaz"];
  @override
  Widget build(BuildContext context) {
    return Center(
      child: PopupMenuButton(
        onSelected: (String secilenSehir) {
          print("secilen sehir: $secilenSehir");
          setState(() {
            _secilen = secilenSehir;
          });
        },
        //icon: Icon(Icons.open_in_new_rounded),
        // child: Text(_secilen),
        itemBuilder: (BuildContext context) {
          // return <PopupMenuEntry<String>>[
          //   PopupMenuItem(
          //     child: Text("ankara"),
          //     value: "ankara",

          //   ),
          //   PopupMenuItem(
          //     child: Text("adana"),
          //     value: "adana",
          //   ),
          //   PopupMenuItem(
          //     child: Text("urfa"),
          //     value: "urfa",
          //   ),
          //   PopupMenuItem(
          //     child: Text("konya"),
          //     value: "konya",
          //   ),
          // ];
          return renkler
              .map(
                (String renk) => PopupMenuItem(
                  child: Text(renk),
                  value: renk,
                ),
              )
              .toList();
        },
      ),
    );
  }
}
