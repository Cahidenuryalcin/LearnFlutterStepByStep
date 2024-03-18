import 'package:flutter/material.dart';

class CardListtileKullanimi extends StatelessWidget {
  const CardListtileKullanimi({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ListView(
        reverse: true,
        children: [
          Column(
            children: [
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
              tekListeElemani(),
            ],
          ),
          Text("selam"),
          ElevatedButton(onPressed: () {}, child: Text("ben buton"))
        ],
      ),
    );
  }

  SingleChildScrollView singleChildKullanimi() {
    return SingleChildScrollView(
      child: Column(
        children: [
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
          tekListeElemani(),
        ],
      ),
    );
  }

  Column tekListeElemani() {
    return Column(
      children: [
        Card(
          color: Colors.brown.shade100,
          shadowColor: Color.fromARGB(255, 0, 255, 60),
          elevation: 12,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: ListTile(
            leading: Icon(Icons.note_alt),
            title: Text("Başlık"),
            subtitle: Text("Başlık"),
            trailing: CircleAvatar(child: Icon(Icons.remove)),
          ),
        ),
        Divider(
          color: Colors.deepOrangeAccent,
          thickness: 5,
          height: 10,
          indent: 60,
          endIndent: 60,
        ),
      ],
    );
  }
}
