import 'package:flutter/material.dart';

class TemelButonTurleri extends StatelessWidget {
  const TemelButonTurleri({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextButton(
            onPressed: () {},
            style: ButtonStyle(
                //  backgroundColor: MaterialStateProperty.all(Colors.amber),

                backgroundColor: MaterialStateProperty.resolveWith((states) {
                  if (states.contains(MaterialState.pressed)) {
                    return Colors.blueAccent;
                  }
                  if (states.contains(MaterialState.hovered)) {
                    return Colors.teal;
                  }
                  return null;
                }),
                foregroundColor: MaterialStateProperty.all(Colors.green[800]),
                overlayColor:
                    MaterialStateProperty.all(Colors.pink.withOpacity(0.5))),
            child: Text("Text Buton")),
        TextButton.icon(
            onPressed: () {},
            icon: Icon(Icons.person),
            label: Text("Text buton Icon")),
        ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              foregroundColor: Color.fromARGB(255, 116, 9, 182),
              backgroundColor: const Color.fromARGB(255, 54, 244, 244),
            ),
            child: Text("Elevated Buton")),
        ElevatedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.person),
            label: Text("Elevated buton Icon")),
        OutlinedButton(onPressed: () {}, child: Text("Outlined buton")),
        OutlinedButton.icon(
            onPressed: () {},
            icon: Icon(Icons.person),
            style: OutlinedButton.styleFrom(
                shape: StadiumBorder(),
                side: BorderSide(
                    color: const Color.fromARGB(255, 58, 183, 93), width: 2)),
            label: Text("Elevated buton Icon")),
      ],
    );
  }
}
