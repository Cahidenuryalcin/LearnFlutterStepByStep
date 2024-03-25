import 'package:flutter/material.dart';

class GridViewKullanimi extends StatelessWidget {
  const GridViewKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 100,
      gridDelegate:
          SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
      itemBuilder: (BuildContext context, index) {
        return Container(
          alignment: Alignment.bottomCenter,
          margin: EdgeInsets.all(20),
          decoration: BoxDecoration(
              color: Colors.pink[100 * ((index + 1) % 8)],
              gradient: LinearGradient(
                colors: [Colors.purple, Colors.pink],
                begin: Alignment.topCenter,
                end: Alignment.bottomCenter,
              ),
              image: DecorationImage(
                image: AssetImage("assets/images/akrep_buyuk8.png"),
                fit: BoxFit.contain,
                alignment: Alignment.topCenter,

                
                )
              ),
          child: Text(
            "merhaba flutter $index",
            textAlign: TextAlign.center,
            style: TextStyle(
              fontSize: 16,
              color: Colors.white,
            ),
          ),
        );
      },
    );
  }

  GridView gridViewExtent() {
    return GridView.extent(
      maxCrossAxisExtent: 200,
      // reverse: true,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 1",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 2",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 3",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 4",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 5",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 6",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 7",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }

  GridView gridViewCount() {
    return GridView.count(
      crossAxisCount: 2,
      reverse: true,
      primary: false,
      scrollDirection: Axis.vertical,
      padding: EdgeInsets.all(10),
      crossAxisSpacing: 20,
      mainAxisSpacing: 40,
      children: [
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 1",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 2",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 3",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 4",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 5",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 6",
            textAlign: TextAlign.center,
          ),
        ),
        Container(
          alignment: Alignment.center,
          color: Colors.teal,
          child: Text(
            "merhaba flutter 7",
            textAlign: TextAlign.center,
          ),
        ),
      ],
    );
  }
}
