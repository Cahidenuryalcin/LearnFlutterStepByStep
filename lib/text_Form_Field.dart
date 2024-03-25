import 'package:email_validator/email_validator.dart';
import 'package:flutter/material.dart';

class TextFormFieldKullanimi extends StatefulWidget {
  const TextFormFieldKullanimi({super.key});

  @override
  State<TextFormFieldKullanimi> createState() => _TextFormFieldKullanimiState();
}

class _TextFormFieldKullanimiState extends State<TextFormFieldKullanimi> {
  String _email = "", _password = "", _userName = "";
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("TEXTFORM"),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            child: Column(
              children: [
                TextFormField(
                  // initialValue: "cahide",
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Username",
                      hintText: "Username"),
                  onSaved: (deger) {
                    _userName = deger!;
                  },
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return "username boş geçilemez";
                    } else {
                      if (deger!.length < 4) {
                        return "username en az 4 karakter olmalı";
                      } else {
                        return null;
                      }
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // initialValue: "cny@cny.com",
                  keyboardType: TextInputType.emailAddress,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Email",
                      hintText: "Email"),
                  onSaved: (deger) {
                    _email = deger!;
                  },
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return "email boş geçilemez";
                    } else {
                      if (!EmailValidator.validate(deger!)) {
                        return "geçerli mail giriniz";
                      } else {
                        return null;
                      }
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                TextFormField(
                  // initialValue: "sifre123",
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      border: OutlineInputBorder(),
                      labelText: "Password",
                      hintText: "Password"),
                  onSaved: (deger) {
                    _password = deger!;
                  },
                  validator: (deger) {
                    if (deger!.isEmpty) {
                      return "şifre boş geçilemez";
                    } else {
                      if (deger!.length < 6) {
                        return "Şifre en az 6 karakter olmalı";
                      } else {
                        return null;
                      }
                    }
                  },
                ),
                SizedBox(
                  height: 10,
                ),
                ElevatedButton(
                  onPressed: () {
                    bool _validate = _formKey.currentState!.validate();
                    if (_validate) {
                      _formKey.currentState!.save();

                      String result =
                          "username: $_userName \n email: $_email \n şifre: $_password ";

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          backgroundColor: Colors.orange.shade300,
                          content: Text(
                            result,
                            style: TextStyle(
                              fontSize: 24,
                            ),
                          )));

                      _formKey.currentState!.reset();
                    }
                  },
                  child: Text("Onayla"),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
