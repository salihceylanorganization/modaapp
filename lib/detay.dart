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
              color:Colors.white.withOpacity(0.7) ,
              elevation: 4,
              child: Container(
                width: 300,
                height: 200,
                child: Text("Tmm"),

              ),
            ),
          ),
        ],
      ),
    );
  }
}
