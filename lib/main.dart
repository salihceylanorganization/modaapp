import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'detay.dart';

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

class _AnaSayfaState extends State<AnaSayfa>
    with SingleTickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this);
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        bottomNavigationBar: altNavigasyonMenu(),
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
              padding: EdgeInsets.all(5),
              //color: Colors.blueAccent.shade100,
              height: 140,
              width: double.infinity,
              child: ListView(
                  padding: EdgeInsets.only(top: 10, bottom: 10),
                  scrollDirection: Axis.horizontal,
                  children: <Widget>[
                    yatayListEleman(
                        "assets/model1.jpeg", "assets/chanellogo.jpg"),
                    SizedBox(width: 10),
                    yatayListEleman(
                        "assets/model2.jpeg", "assets/louisvuitton.jpg"),
                    SizedBox(width: 10),
                    yatayListEleman(
                        "assets/model3.jpeg", "assets/chloelogo.png"),
                    SizedBox(width: 10),
                    yatayListEleman(
                        "assets/model1.jpeg", "assets/chanellogo.jpg"),
                    SizedBox(width: 10),
                    yatayListEleman(
                        "assets/model2.jpeg", "assets/louisvuitton.jpg"),
                    SizedBox(width: 10),
                    yatayListEleman(
                        "assets/model3.jpeg", "assets/chloelogo.png"),
                    SizedBox(width: 10),
                  ]),
            ),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Material(
                borderRadius: BorderRadius.circular(16),
                elevation: 11,
                //color: Colors.blue.shade200,
                child: Container(
                  height: 570,
                  width: double.infinity,
                  padding: EdgeInsets.all(16),
                  child: Column(
                    children: <Widget>[
                      Row(
                        children: <Widget>[
                          Container(
                            height: 50,
                            width: 50,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(30),
                              image: DecorationImage(
                                  image: AssetImage("assets/model1.jpeg"),
                                  fit: BoxFit.cover),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Container(
                            height: 75,
                            width: MediaQuery.of(context).size.width - 180,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: <Widget>[
                                Text(
                                  "Daisy",
                                  style: TextStyle(
                                    fontSize: 17,
                                    fontFamily: 'Montserrat',
                                    color: Colors.black,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                SizedBox(
                                  height: 3,
                                ),
                                Text(
                                  "34 dk. Önce",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'Montserrat',
                                    color: Colors.grey,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.more_vert,
                              color: Colors.grey,
                              size: 25,
                            ),
                            onPressed: () {
                              debugPrint("Daisy");
                            },
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Text(
                        "       Bu bir moda sitesi. Bu bir moda sitesi.Bu bir moda sitesi.Bu bir moda sitesi.Bu bir moda sitesi.Bu bir moda sitesi.Bu bir moda sitesi.Bu bir moda sitesi.",
                        style: TextStyle(
                          color: Colors.grey,
                          fontSize: 14,
                          fontFamily: 'Montserrat',
                        ),
                        textAlign: TextAlign.justify,
                      ),
                      SizedBox(
                        height: 10,
                      ),
                      Row(
                        children: <Widget>[
                          InkWell(
                            onTap: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(
                                  builder: (context) =>
                                      Detay(imgPath: "assets/modelgrid1.jpeg"),
                                ),
                              );
                            },
                            child: Hero(
                              tag: "assets/modelgrid1.jpeg",
                              child: Container(
                                height: 230,
                                width:
                                    (MediaQuery.of(context).size.width - 50) /
                                        2,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  image: DecorationImage(
                                      image:
                                          AssetImage("assets/modelgrid1.jpeg"),
                                      fit: BoxFit.fill),
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Column(
                            children: <Widget>[
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: "assets/modelgrid2.jpeg"),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid2.jpeg",
                                  child: Container(
                                    height: 110,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid2.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                              SizedBox(
                                height: 10,
                              ),
                              InkWell(
                                onTap: () {
                                  Navigator.of(context).push(
                                    MaterialPageRoute(
                                      builder: (context) => Detay(
                                          imgPath: "assets/modelgrid3.jpeg"),
                                    ),
                                  );
                                },
                                child: Hero(
                                  tag: "assets/modelgrid3.jpeg",
                                  child: Container(
                                    height: 110,
                                    width: (MediaQuery.of(context).size.width -
                                            100) /
                                        2,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                      image: DecorationImage(
                                          image: AssetImage(
                                              "assets/modelgrid3.jpeg"),
                                          fit: BoxFit.cover),
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        children: <Widget>[
                          Chip(
                            label: Text(
                              "# Louis Vutton",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Chip(
                            label: Text(
                              "# Chloe",
                              style: TextStyle(
                                fontFamily: 'Montserrat',
                              ),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Divider(),
                      Row(
                        children: <Widget>[
                          IconButton(icon: Icon(Icons.reply), iconSize: 35),
                          SizedBox(width: 5),
                          Text("17k",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey)),
                          SizedBox(width: 5),
                          IconButton(icon: Icon(Icons.comment), iconSize: 35),
                          SizedBox(width: 5),
                          Text("325",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey)),
                          SizedBox(
                            width: MediaQuery.of(context).size.width - 315,
                          ),
                          IconButton(
                            icon: Icon(
                              Icons.favorite,
                              color: Colors.red,
                            ),
                            iconSize: 35,
                          ),
                          SizedBox(width: 5),
                          Text("Like",
                              style: TextStyle(
                                  fontFamily: 'Montserrat',
                                  color: Colors.grey)),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ));
  }

  Widget yatayListEleman(imagePath, logoPath) {
    return Column(
      children: <Widget>[
        Stack(
          children: <Widget>[
            Container(
              margin: EdgeInsets.only(left: 10),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(45),
                image: DecorationImage(
                    image: AssetImage(imagePath), fit: BoxFit.cover),
              ),
              height: 75,
              width: 75,
            ),
            Positioned(
              top: 50,
              left: 60,
              child: Container(
                height: 25,
                width: 25,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(15),
                  image: DecorationImage(
                    image: AssetImage(logoPath),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
          ],
        ),
        SizedBox(
          height: 5,
        ),
        Container(
          width: 75,
          height: 30,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15),
            color: Colors.brown,
          ),
          child: Center(
            child: Text("Follow",
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 16,
                )),
          ),
        ),
      ],
    );
  }

  Widget altNavigasyonMenu() {
    return Material(
      color: Colors.white,
      child: TabBar(
        controller: tabController,
        tabs: [
          Tab(
            icon: Icon(
              Icons.more,
              color: Colors.grey,
              size: 36,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.play_arrow,
              color: Colors.grey,
              size: 36,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.navigation,
              color: Colors.grey,
              size: 36,
            ),
          ),
          Tab(
            icon: Icon(
              Icons.supervised_user_circle,
              color: Colors.grey,
              size: 36,
            ),
          ),
        ],
      ),
    );
  }
}
