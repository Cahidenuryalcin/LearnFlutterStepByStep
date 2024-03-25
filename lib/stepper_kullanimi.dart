import 'package:flutter/material.dart';

class StepperKullanimi extends StatefulWidget {
  const StepperKullanimi({super.key});

  @override
  State<StepperKullanimi> createState() => _StepperKullanimiState();
}

class _StepperKullanimiState extends State<StepperKullanimi> {
  int _aktifStep = 0;
  String isim = "", mail = "", sifre = "";

  List<Step> tumStepler = [];

  var key0 = GlobalKey<FormFieldState>();
  var key1 = GlobalKey<FormFieldState>();
  var key2 = GlobalKey<FormFieldState>();

  bool hata = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    tumStepler = _tumStepler();

    return Scaffold(
      appBar: AppBar(
        title: Text("Stepper Kullanımı"),
      ),
      body: SingleChildScrollView(
        child: Stepper(
          steps: tumStepler,
          currentStep: _aktifStep,
          /*  onStepTapped: (tiklanilanStep) {
            setState(() {
              _aktifStep = tiklanilanStep;
            });
          }, */
          onStepContinue: () {
            setState(() {
              _ileriButonuKontrolu();
            });
          },
          onStepCancel: () {
            setState(() {
              if (_aktifStep > 0) {
                _aktifStep--;
              } else {
                _aktifStep = 0;
              }
            });
          },
        ),
      ),
    );
  }

  List<Step> _tumStepler() {
    List<Step> stepler = [
      Step(
        title: Text("Kullanici adi title"),
        subtitle: Text("Kullanici adi subtitle"),
        state: _stateleriAyarla(0),
        isActive: true,
        content: TextFormField(
          key: key0,
          decoration: InputDecoration(
              labelText: "UsernameLabel",
              hintText: "UsernameHint",
              border: OutlineInputBorder()),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return "Username en az 6 karakter giriniz";
            }
            return null;
          },
          onSaved: (girilenDeger) {
            isim = girilenDeger!;
          },
        ),
      ),
      Step(
        title: Text("Mail  title"),
        subtitle: Text("Mail subtitle"),
        state: _stateleriAyarla(1),
        isActive: true,
        content: TextFormField(
          key: key1,
          decoration: InputDecoration(
              labelText: "MailLabel",
              hintText: "MailHint",
              border: OutlineInputBorder()),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6 || !girilenDeger.contains("@")) {
              return 'Geçerli mail adresi giriniz';
            }
            return null;
          },
          onSaved: (girilenDeger) {
            mail = girilenDeger!;
          },
        ),
      ),
      Step(
        title: Text("Sifre  title"),
        subtitle: Text("Sifre subtitle"),
        state: _stateleriAyarla(2),
        isActive: true,
        content: TextFormField(
          key: key2,
          decoration: InputDecoration(
              labelText: "SifreLabel",
              hintText: "SifreHint",
              border: OutlineInputBorder()),
          validator: (girilenDeger) {
            if (girilenDeger!.length < 6) {
              return "Sifre en az 6 karakter giriniz";
            }
            return null;
          },
          onSaved: (girilenDeger) {
            sifre = girilenDeger!;
          },
        ),
      ),
    ];
    return stepler;
  }

  StepState _stateleriAyarla(int oankiStep) {
    if (_aktifStep == oankiStep) {
      if (hata) {
        return StepState.error;
      } else {
        return StepState.editing;
      }
    } else {
      return StepState.complete;
    }
  }

  void _ileriButonuKontrolu() {
    switch (_aktifStep) {
      case 0:
        if (key0.currentState!.validate()) {
          key0.currentState!.save();
          hata = false;
          _aktifStep = 1;
        } else {
          hata = true;
        }
        break;
      case 1:
        if (key1.currentState!.validate()) {
          key1.currentState!.save();
          hata = false;
          _aktifStep = 2;
        } else {
          hata = true;
        }
        break;

      case 2:
        if (key2.currentState!.validate()) {
          key2.currentState!.save();
          hata = false;
          _aktifStep = 2;
          formTamamlandi();
        } else {
          hata = true;
        }
        break;
      default:
    }
  }

  void formTamamlandi() {
    debugPrint("girilen değerler $isim $mail $sifre");
  }
}
