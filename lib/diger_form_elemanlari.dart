import 'package:flutter/material.dart';

class DigerFormElemanlari extends StatefulWidget {
  const DigerFormElemanlari({super.key});

  @override
  State<DigerFormElemanlari> createState() => _DigerFormElemanlariState();
}

class _DigerFormElemanlariState extends State<DigerFormElemanlari> {
  bool checkBoxState = false;

  String sehir = "";

  bool switchState = false;

  double sliderDeger = 10;

  String secilenRenk = "Kirmizi";

  List<String> sehirler = ["Adana", "Bursa", "Ceyhan", "Denizli", "Edirne"];
  String secilenSehir = "Adana";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Diger Form Elemanları"),
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            CheckboxListTile(
              value: checkBoxState,
              onChanged: (secildi) {
                setState(() {
                  checkBoxState = secildi!;
                });
              },
              activeColor: Color.fromARGB(255, 5, 38, 255),
              title: Text("Checkbox title"),
              subtitle: Text("Checkbox Subtitle"),
              secondary: Icon(Icons.add),
              selected: true,
            ),
            RadioListTile<String>(
              value: "Ankara",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  debugPrint("seçilen deger: $deger");
                });
              },
              title: Text("Ankara"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String>(
              value: "Bursa",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  debugPrint("seçilen deger: $deger");
                });
              },
              title: Text("Bursa"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            RadioListTile<String>(
              value: "İstanbul",
              groupValue: sehir,
              onChanged: (deger) {
                setState(() {
                  sehir = deger!;
                  debugPrint("seçilen deger: $deger");
                });
              },
              title: Text("İstanbul"),
              subtitle: Text("Radio Subtitle"),
              secondary: Icon(Icons.map),
            ),
            SwitchListTile(
              value: switchState,
              onChanged: (deger) {
                setState(() {
                  switchState = deger;
                });
              },
              title: Text("Switch title"),
              subtitle: Text("switch subtitle"),
              secondary: Icon(Icons.dark_mode),
            ),
            Text("Değeri Sliderden seçiniz"),
            Slider(
              value: sliderDeger,
              onChanged: (deger) {
                setState(() {
                  sliderDeger = deger;
                });
              },
              min: 10,
              max: 20,
              divisions: 20,
              label: sliderDeger.toString(),
              activeColor: Colors.red,
            ),
            DropdownButton<String>(
              items: [
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.red,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Kirmizi"),
                    ],
                  ),
                  value: "Kirmizi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.blue,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Mavi"),
                    ],
                  ),
                  value: "Mavi",
                ),
                DropdownMenuItem<String>(
                  child: Row(
                    children: [
                      Container(
                        width: 12,
                        height: 12,
                        color: Colors.green,
                        margin: EdgeInsets.only(right: 10),
                      ),
                      Text("Yesil"),
                    ],
                  ),
                  value: "Yesil",
                ),
              ],
              onChanged: (String? secilen) {
                setState(() {
                  secilenRenk = secilen!;
                });
              },
              hint: Text("Seçiniz"),
              value: secilenRenk,
            ),

            DropdownButton<String>(
              items: sehirler.map((oankiSehir) {
                return DropdownMenuItem<String>(
                    child: Text(oankiSehir), value: oankiSehir,);
              }).toList(),
              onChanged: (s) {
                setState(() {
                  secilenSehir = s!;
                });
              },
              value: secilenSehir,
            ),
          ],
        ),
      ),
    );
  }
}
