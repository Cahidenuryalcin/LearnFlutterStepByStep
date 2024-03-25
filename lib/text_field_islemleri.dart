import 'package:flutter/material.dart';

class TextFieldIslemleri extends StatefulWidget {
  const TextFieldIslemleri({super.key});

  @override
  State<TextFieldIslemleri> createState() => _TextFieldIslemleriState();
}

class _TextFieldIslemleriState extends State<TextFieldIslemleri> {
  late TextEditingController _emailController;
  late FocusNode _focusNode;
  int maxLineCount = 1;

  @override
  void initState() {
    super.initState();
    _emailController = TextEditingController(text: "cahide@cahide.com");
    _focusNode = FocusNode();
    _focusNode.addListener(() {
      setState(() {
        if (_focusNode.hasFocus) {
          maxLineCount = 3;
        } else {
          maxLineCount = 1;
        }
      });
    });
  }

  @override
  void dispose() {
    _emailController.dispose();
    _focusNode.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text("TEXTFİELD"),
      ),
  
    body: Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            focusNode: _focusNode,
            controller: _emailController,
            keyboardType: TextInputType.emailAddress,
            textInputAction: TextInputAction.next,
            autofocus: true,
            maxLines: maxLineCount,
            maxLength: 30,
            onChanged: (String deger) {
              if (deger.length > 3) {
                setState(() {
                  _emailController.value = TextEditingValue(
                    text: deger,
                    selection: TextSelection.collapsed(offset: deger.length),
                  );
                });
              }
            },
            cursorColor: Colors.pink,
            decoration: InputDecoration(
                labelText: "LabelText",
                hintText: "Email Giriniz",
                // icon: Icon(Icons.phone),
                prefixIcon: Icon(Icons.email),
                suffixIcon: Icon(Icons.emoji_flags),
                filled: true,
                fillColor: Color.fromARGB(255, 232, 244, 147),
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.all(
                    Radius.circular(18.0),
                  ),
                )),
            onSubmitted: (String deger) {
              print("submit $deger");
            },
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(_emailController.text),
        ),
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: TextField(
            keyboardType: TextInputType.number,
            textInputAction: TextInputAction.next,
          ),
        ),
        FloatingActionButton(
          onPressed: () {
            setState(() {
              _emailController.text = "yalcin@gmail.com";
            });
          },
          child: Icon(Icons.edit),
        ),
      ],
    ),
    );
  }
}
