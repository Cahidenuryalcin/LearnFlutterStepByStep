import 'package:flutter/material.dart';
import 'package:flutter_temel_widgets/model/burc.dart';

import 'package:palette_generator/palette_generator.dart';

class BurcDetay extends StatefulWidget {
  final Burc secilenBurc;
  const BurcDetay({super.key, required this.secilenBurc});

  @override
  State<BurcDetay> createState() => _BurcDetayState();
}

class _BurcDetayState extends State<BurcDetay> {
  Color appbarRengi = Colors.transparent;
  late PaletteGenerator _generator;

  @override
  void initState() {
    super.initState();
    appbarRengiBul();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: CustomScrollView(
        slivers: [
          SliverAppBar(
            expandedHeight: 250,
            pinned: true,
            backgroundColor: appbarRengi,
            flexibleSpace: FlexibleSpaceBar(
              title: Text(widget.secilenBurc.burcAdi + " Burcu ve Özellikleri"),
              background: Image.asset(
                "assets/images/" + widget.secilenBurc.burcBuyukResim,
                fit: BoxFit.cover,
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: EdgeInsets.all(16),
              child: SingleChildScrollView(
                child: Text(
                  widget.secilenBurc.burcDetayi,
                  style: Theme.of(context).textTheme.titleMedium,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }

  void appbarRengiBul() async {
    _generator =  await PaletteGenerator.fromImageProvider(
        AssetImage("assets/images/${widget.secilenBurc.burcBuyukResim}"));

    appbarRengi = _generator.vibrantColor!.color;

    setState(() {

    });

  }
}
