import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Detay extends StatefulWidget {
  var imgPath;

  Detay({this.imgPath});

  @override
  _DetayState createState() => _DetayState();
}

class _DetayState extends State<Detay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Hero(
            tag: widget.imgPath,
            child: Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height,
              decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage(widget.imgPath), fit: BoxFit.cover)),
            ),
          ),
          Positioned(
            bottom: 15,
            left: 15,
            right: 15,
            child: Material(
              borderRadius: BorderRadius.circular(15),
              color: Colors.white.withOpacity(0.7),
              elevation: 4,
              child: Container(
                width: 300,
                height: 230,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Padding(
                          padding: EdgeInsets.all(10),
                          child: Container(
                            width: 100,
                            height: 120,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              border: Border.all(color: Colors.grey, width: 3),
                              borderRadius: BorderRadius.circular(15),
                              image: DecorationImage(
                                image: AssetImage("assets/dress.jpg"),
                                fit: BoxFit.contain,
                              ),
                            ),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("LAMİNATED",
                                style: TextStyle(
                                    fontSize: 31, fontFamily: 'Montserrat')),
                            SizedBox(height: 2),
                            Text("Elif CEYLAN",
                                style: TextStyle(
                                    fontSize: 15, fontFamily: 'Montserrat')),
                            SizedBox(height: 5),
                            Container(
                              width: MediaQuery.of(context).size.width - 170,
                              height: 45,
                              child: Text(
                                "Elif CEYLAN, Salih CEYLAN, Zeynep CEYLAN, Habibe CEYLAN, Ahmet CEYLAN",
                                style: TextStyle(
                                    fontSize: 13, fontFamily: 'Montserrat'),
                                textAlign: TextAlign.left,
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    Divider(),
                    Padding(
                      padding: const EdgeInsets.all(5.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            "\$6500",
                            style: TextStyle(
                                fontSize: 27,
                                fontFamily: 'Montserrat',
                                fontWeight: FontWeight.bold),
                          ),
                          FloatingActionButton(
                            onPressed: () {},
                            child: Icon(Icons.arrow_forward_ios,
                                color: Colors.white),
                          ),
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Positioned(
            top: MediaQuery.of(context).size.height / 2,
            left: 31,
            child: Container(
              height: 30,
              width: 150,
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.4),
                  borderRadius: BorderRadius.circular(8)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 7),
                    child: Center(
                      child: Text(
                        "LAMINATED",
                        style: TextStyle(
                            fontFamily: 'Montserrat',
                            color: Colors.white,
                            fontWeight: FontWeight.bold),
                      ),
                    ),
                  ),
                  Icon(Icons.arrow_forward_ios, size: 25, color: Colors.white),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
