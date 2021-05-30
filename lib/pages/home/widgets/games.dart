import 'package:flutter/material.dart';

class Games extends StatelessWidget {
  const Games({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listImages = [
      "assets/ward.jpeg",
      "assets/crash.jpeg",
      "assets/free.jpeg",
      "assets/dota2.jpeg",
    ];

    return Container(
      height: 170.0,
      margin: EdgeInsets.only(top: 30.0),
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: listImages.length,
        itemBuilder: (context, index) {
          return Container(
            width: 130.0,
            height: 165.0,
            margin: EdgeInsets.only(left: 20.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                image: AssetImage(listImages[index]),
                fit: BoxFit.cover,
              ),
            ),
          );
        },
      ),
    );
  }
}
