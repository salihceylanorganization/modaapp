import 'package:flutter/material.dart';

void main() {
  runApp(ModaApp());
}

class ModaApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Moda Uygulaması",
      theme: ThemeData(
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: AnaSayfa(),
    );
  }
}

class AnaSayfa extends StatefulWidget {
  @override
  _AnaSayfaState createState() => _AnaSayfaState();
}

class _AnaSayfaState extends State<AnaSayfa> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          backgroundColor: Colors.transparent,
          elevation: 0,
          title: Text(
            "Moda Uygulaması",
            style: TextStyle(
              fontFamily: 'Montserrat',
              fontSize: 22,
              color: Colors.blueAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
          actions: <Widget>[
            IconButton(
              icon: Icon(
                Icons.camera_alt,
                size: 22,
                color: Colors.grey,
              ),
              onPressed: () {},
            )
          ],
        ),
        body: ListView(
          children: <Widget>[
            Container(
              padding: EdgeInsets.all(10),
              color: Colors.blueAccent.shade100,
              height: 115,
              width: double.infinity,
              child: ListView(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    yatayListEleman(
                        "assets/model1.jpeg", "assets/chanellogo.jpg"),

                  ]),
            ),
          ],
        ));
  }

  Widget yatayListEleman(imagePath, logoPath) {
    return Column(

      children: <Widget>[
        Stack(

          children: <Widget>[
            Container(margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(30),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
              height: 75,
              width: 75,
            ),
          ],
        )
      ],
    );
  }
}
