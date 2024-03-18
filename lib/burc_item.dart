import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/burc_detay.dart';
import 'package:flutter_temel_widgets/model/burc.dart';

class BurcITem extends StatelessWidget {
  final Burc listenenBurc;

  const BurcITem({super.key, required this.listenenBurc});

  @override
  Widget build(BuildContext context) {
    var myTextStyle = Theme.of(context).textTheme;
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: Card(
        elevation: 4,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: ListTile(
            onTap: () {
              Navigator.of(context).push(
                MaterialPageRoute(
                  builder: (context) => BurcDetay(secilenBurc: listenenBurc),
                ),
              );
            },
            leading: Image.asset(
              "assets/images/" + listenenBurc.burcKucukResim,
              width: 64,
              height: 64,
            ),
            title: Text(
              listenenBurc.burcAdi,
              style: myTextStyle.headlineMedium,
            ),
            subtitle: Text(
              listenenBurc.burcTarihi,
              style: myTextStyle.bodyMedium,
            ),
            trailing: Icon(
              Icons.arrow_forward_ios,
              color: Colors.pink,
            ),
          ),
        ),
      ),
    );
  }
}
