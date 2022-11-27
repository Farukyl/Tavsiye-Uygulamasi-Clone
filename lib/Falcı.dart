import 'package:flutter/material.dart';

import 'dart:math';


void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: Theme.of(context).textTheme.apply(
          bodyColor: Colors.white,
          displayColor: Colors.white,
        ),
      ),
      home: const menu(),
    );
  }
}

class menu extends StatefulWidget {
  const menu({super.key});

  @override
  HomePage createState() => HomePage();
}

int cevapIndex = 0;

class HomePage extends State<menu> {
  List<String> cevaplar = [
    'Tavsiye İçin Tıkla',
    'Aşk: Bugün açık olun. Sevgilinizle yeni aktiviteler deneyin',
    'Aşk: İletişim mutlu ilişkinin anahtarıdır. Dürüstçe her şeyi konuşmak gerekir',
    'Aşk: İlişkiler karşılıklı güven üstüne kuruludur. Sevgilinizin güvenini sarsmayın',
    'Aşk: Deneyimlemekten korkmayın. Aşk, aşı gibidir. Acıtır, ama çoğu şeye de bağışıklık kazandırır',
    'Aşk: Duygularınız çoğu zaman rasyonel düşüncelerinize galip geliyor ve sonunda derinlerde duyguların beslediği bir karmaşa ortaya çıkıyor. Çok da mantıklı düşünerek kalbinizi görmezden gelmeyin. Amacınız bu ikisi arasında dengeyi bulmak.',
    'Finansal: Portföyünüzü düzenli olarak yeniden gözden geçirin',
    'Finansal: Nakit akışınızı takip edin. Kesinlikle masa başına oturup bir bütçe hesabı yapmalısınız',
    'Finansal: Bugün yardım bekleyen kişilere bağış yapın. İnsanları mutlu edin',
    'Finansal: Yatırım yapmaya başlayın, bu size uzun vadede gelir getirecektir',
    'Finansal: Maddi harcamalarınızı düzene sokun, gereksiz yerlere para savurmayı bırakın',
    'Tavsiye: Bugün bolca su içmeyi unutma ',
    'Tavsiye: Bugün hayatı daha farklı görmeye çalış, yüzünden gülümseme eksik olmasın',
    'Tavsiye: Bugün mantıklı sorular sorun ve sorularınıza cevap almak için uğraşın',
    'Tavsiye: Bugün iyi çalış, ertelediğin işleri yapmaya başla',
    'Tavsiye: Bugün spor yap, eski hareketli hayatına dönmeye çabala',
    'Tavsiye: Bugün insanlara yardım et, diğerlerini de düşünmeye başla',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.pink.shade200,
      appBar: AppBar(
        centerTitle: true,
        backgroundColor: Colors.purple,
        title: const Text('Günün Güzel Geçsin'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Container(
                width: 150,
                margin: const EdgeInsets.only(bottom: 20),
                child: Image.asset('lib/resimler/images/astrolojik-tarot.png')),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: const Icon(Icons.favorite_outline_sharp, color: Colors.redAccent),
                title: const Text(
                  'Aşk Tavsiyesi',
                  style: TextStyle(
                    color: Colors.redAccent,
                  ),
                ),
                onTap: () {
                  setState(() {
                    cevapIndex = Random().nextInt(5) + 1;
                  });
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: const Icon(
                  Icons.data_exploration,
                  color: Colors.green,
                ),
                title: const Text(
                  'Finansal Tavsiye',
                  style: TextStyle(
                    color: Colors.green,
                  ),
                ),
                onTap: () {
                  setState(() {
                    cevapIndex = Random().nextInt(5) + 6;
                  });
                },
              ),
            ),
            Card(
              margin: const EdgeInsets.symmetric(vertical: 5.0, horizontal: 40.0),
              child: ListTile(
                leading: const Icon(
                  Icons.explore,
                  color: Colors.blue,
                ),
                title: const Text(
                  'Günlük Tavsiye',
                  style: TextStyle(
                    color: Colors.blue,
                  ),
                ),
                onTap: () {
                  setState(() {
                    cevapIndex = Random().nextInt(6) + 11;
                  });
                },
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 25),
                height: 150,
                width: double.infinity,
                child: Padding(
                    padding:
                    const EdgeInsets.symmetric(vertical: 5.0, horizontal: 20.0),
                    child: Text(cevaplar[cevapIndex],
                        style: const TextStyle(fontSize: 16),
                        textAlign: TextAlign.center))),
          ],
        ),
      ),
    );
  }
}