import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/burc_item.dart';
import 'package:flutter_temel_widgets/data/strings.dart';
import 'package:flutter_temel_widgets/model/burc.dart';

class BurcListesi extends StatelessWidget {
  late List<Burc> tumBurclar = [];

  BurcListesi() {
    tumBurclar = veriKaynaginiHazirla();
    print(tumBurclar);
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView.builder(itemBuilder: (context,index){
        return BurcITem(
          listenenBurc: tumBurclar[index],
        );
      } , itemCount: tumBurclar.length)
    );
  }
  
  List<Burc> veriKaynaginiHazirla() {
    List<Burc> gecici =[];
    for (var i = 0; i < 12; i++) {
      var burcAdi = Strings.BURC_ADLARI[i];
      var burcTarih = Strings.BURC_TARIHLERI[i];
      var burcDetay = Strings.BURC_GENEL_OZELLIKLERI[i];

      var burcKucukResim = Strings.BURC_ADLARI[i].toLowerCase() + "${(i+1)}.png";

      var burcBuyukResim = Strings.BURC_ADLARI[i].toLowerCase() + "_buyuk"+ "${(i+1)}.png";


      Burc eklenecekBurc= Burc(burcAdi: burcAdi, burcTarihi: burcTarih, burcDetayi: burcDetay, burcKucukResim: burcKucukResim, burcBuyukResim: burcBuyukResim);
      gecici.add(eklenecekBurc);
    }
    return gecici;
  }
}
