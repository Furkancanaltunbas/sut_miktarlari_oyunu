import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final TextEditingController _sultanController = TextEditingController();
  final TextEditingController _benekliController = TextEditingController();
  final TextEditingController _tosunController = TextEditingController();
  final TextEditingController _saskinController = TextEditingController();
  final TextEditingController _garipController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SafeArea(
      child: SingleChildScrollView(
        child: Center(
            child: Column(
          children: [
            SizedBox(
              height: 30,
            ),
            Text(
              "Süt Miktarları",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(12.0),
              child: Text(
                "Bir Çifçinin  beş ineği var: Sutan,Benekli,Tosun,Şaşkın ve Garip. Çiftçi,her bir ineğin Günde kaç ünite süt verdiğini göstermek için bir tablo çizer.Ne var ki ineklerin isminitabloya yazmayı unutur.Tek hatırladığı Sultan'ın Tosun'dan bir ünite fazla, Garip'in ise Benekli ile aynı miktarda süt verdiğidir.",
                style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Image.asset('assets/images/grafik.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              "Buna göre her bir inek kaç ünite süt vermiştir?",
              style: TextStyle(fontSize: 16, fontWeight: FontWeight.w700),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _sultanController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Sultan',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _benekliController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Benekli',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _tosunController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Tosun',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _saskinController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Şaşkın',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextField(
                controller: _garipController,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  labelText: 'Garip',
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton(
              onPressed: () {
                if (_sultanController.text == "7" &&
                    _benekliController.text == "5" &&
                    _tosunController.text == "6" &&
                    _saskinController.text == "2" &&
                    _garipController.text == "5") {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Tebrikler!"),
                      content: Text("Doğru cevap verdiniz."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                } else {
                  showDialog(
                    context: context,
                    builder: (BuildContext context) => AlertDialog(
                      title: Text("Üzgünüm!"),
                      content: Text(
                          "Yanlış cevap verdiniz veya tüm boşlukları doldurmadınız."),
                      actions: [
                        TextButton(
                          onPressed: () => Navigator.pop(context, 'OK'),
                          child: const Text('OK'),
                        ),
                      ],
                    ),
                  );
                }
              },
              child: Text('Cevapla'),
            ),
          ],
        )),
      ),
    ));
  }
}
