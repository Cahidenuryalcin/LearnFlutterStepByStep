
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:flutter_easyloading/flutter_easyloading.dart';

class ListViewKullanimi extends StatelessWidget {
  ListViewKullanimi({super.key});

  List<Ogrenci> tumOgrenciler = List.generate(
      500,
      (index) => Ogrenci(
          id: index + 1,
          isim: "Ogrenci adi ${index + 1}",
          soyisim: "Ogrenci soyadi ${index + 1}"));

  @override
  Widget build(BuildContext context) {
    return separatedIle();
  }

  ListView separatedIle() {
    return ListView.separated(
      itemBuilder: (BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0
              ? Color.fromARGB(255, 207, 229, 255)
              : Color.fromARGB(255, 254, 204, 221),
          child: ListTile(
            onTap: () {
              print("${index + 1}. öğrenci tıklandı");
              if (index % 2 == 0) {
                EasyLoading.instance.backgroundColor = Colors.blue;
              } else {
                EasyLoading.instance.backgroundColor = Colors.pink;
              }
              EasyLoading.showToast(
                "eleman tıklandı",
                duration: Duration(
                  seconds: 3,
                ),
                dismissOnTap: true,
                toastPosition: EasyLoadingToastPosition.bottom,
              );
            },
            onLongPress: () {
              _alertDialogIslemleri(context);
            },
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(child: Text(oankiOgrenci.id.toString())),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
      separatorBuilder: (context, index) {
        var yeniIndex = index + 1;
        if (yeniIndex % 5 == 0) {
          return Divider(
            thickness: 2,
            color: Colors.deepOrangeAccent,
          );
        }
        return SizedBox();
      },
    );
  }

  ListView builderIle() {
    return ListView.builder(
      itemBuilder: (BuildContext context, int index) {
        var oankiOgrenci = tumOgrenciler[index];
        return Card(
          color: index % 2 == 0
              ? Color.fromARGB(255, 207, 229, 255)
              : Color.fromARGB(255, 254, 204, 221),
          child: ListTile(
            onTap: () {
              print("${index + 1}. öğrenci tıklandı");
            },
            title: Text(oankiOgrenci.isim),
            subtitle: Text(oankiOgrenci.soyisim),
            leading: CircleAvatar(child: Text(oankiOgrenci.id.toString())),
          ),
        );
      },
      itemCount: tumOgrenciler.length,
    );
  }

  ListView classicListView() {
    return ListView(
      children: tumOgrenciler
          .map((Ogrenci ogr) => ListTile(
                title: Text(ogr.isim),
                subtitle: Text(ogr.soyisim),
                leading: CircleAvatar(child: Text(ogr.id.toString())),
              ))
          .toList(),
    );
  }

  void _alertDialogIslemleri(BuildContext myContex) {
    showDialog(
        context: myContex,
        builder: (contex) {
          return AlertDialog(
            title: Text("dialog başlık"),
            content: SingleChildScrollView(
             // child: Text("cahide nur yalçın " *200),
             child: ListBody(
              children: [
                Text("cahide"*100),
                Text("cahide1"*100),
                Text("cahide2"*100),
                Text("cahide3"*100),
                ],),
            ),
            
          );
        });
  }
}

class Ogrenci {
  final int id;
  final String isim;
  final String soyisim;

  Ogrenci({required this.id, required this.isim, required this.soyisim});
}
