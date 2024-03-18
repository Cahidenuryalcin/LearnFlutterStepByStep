import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class ImageOrnekleri extends StatelessWidget {
  const ImageOrnekleri({super.key});

  @override
  Widget build(BuildContext context) {
    String _imgCupcake =
        "https://i.pinimg.com/736x/74/0d/36/740d3682d6cc127687bb573ce9d00ffa.jpg";
    String _imgMms =
        "https://www.logodesign.net/images/home-logos/brand-pepsi-logo.png";
    String _pirilti =
        "https://media2.giphy.com/media/3oEjI6SIIHBdRxXI40/200w.gif?cid=6c09b9524860az2zbsg37kmfadoikggv3q3tv4muax0ivh5u&ep=v1_gifs_search&rid=200w.gif&ct=g";
    return Center(
      child: Column(
        children: [
          IntrinsicHeight(
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    height: 300,
                    child: Image.asset(
                      "assets/imagescopy/cupcake.jpg",
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Colors.amber,
                    child: Image.network(
                      _imgCupcake,
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Expanded(
                  child: Container(
                    color: Color.fromARGB(255, 84, 23, 62),
                    child: Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: CircleAvatar(
                        /*child: Text(
                      "c",
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 80,
                      ),
                    ),*/
                        backgroundImage: NetworkImage(_imgMms),
                        backgroundColor: Color.fromARGB(255, 122, 17, 73),
                        foregroundColor: Colors.pink[600],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            height: 100,
            child: FadeInImage.assetNetwork(
                fit: BoxFit.contain,
                placeholder: "assets/imagescopy/200w.gif",
                image: _imgMms),
          ),
          Expanded(
              child: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Placeholder(),
          )),
        ],
      ),
    );
  }
}
