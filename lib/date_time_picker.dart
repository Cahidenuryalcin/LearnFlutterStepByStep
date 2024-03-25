import 'package:flutter/material.dart';
import 'package:date_format/date_format.dart';

class TarihSaatOrnek extends StatefulWidget {
  const TarihSaatOrnek({super.key});

  @override
  State<TarihSaatOrnek> createState() => _TarihSaatOrnekState();
}

class _TarihSaatOrnekState extends State<TarihSaatOrnek> {
  @override
  Widget build(BuildContext context) {
    
    DateTime suan = DateTime.now();
    DateTime ucAyOncesi = DateTime(2024, suan.month - 3 ,);
    DateTime yirmiGunSonrasi = DateTime(2024, suan.month ,suan.day + 20);

    TimeOfDay suankiSaat= TimeOfDay.now();

    return Scaffold(
      appBar: AppBar(
        title: Text("Tarih ve Saat Örneği"),
      ),
      body: Center(
       
        child: Column(
          
          children: [
            ElevatedButton(
              
              child: Text("Tarih seç"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.blue,
              ),
              onPressed: () {
                showDatePicker(
                  context: context,
                  initialDate: suan,
                  firstDate: ucAyOncesi,
                  lastDate: yirmiGunSonrasi,
                ).then((secilenTarih) => {
                  debugPrint(secilenTarih.toString()),
                  debugPrint(secilenTarih!.millisecondsSinceEpoch.toString()),


                  debugPrint(formatDate(secilenTarih!, [yyyy, '-', mm, '-', dd])),
                  debugPrint(formatDate(secilenTarih!, [dd, '-', mm, '-', yyyy])),

    
                });
              },
            ),

            ElevatedButton(
              
              child: Text("Saat seç"),
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.green,
              ),
              onPressed: () {
                showTimePicker(
                  context: context, 
                  initialTime: suankiSaat
                  ).then((secilenSaat) => {
                  debugPrint(secilenSaat!.format(context)),
                  debugPrint(secilenSaat!.hour.toString() + ":" + secilenSaat.minute.toString()),

                  });

              },
            ),
          ],
        ),
      ),
    );
  }
}
