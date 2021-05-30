import 'package:flutter/material.dart';
import 'package:flutter_swiper/flutter_swiper.dart';

class StackGames extends StatelessWidget {
  const StackGames({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> listImages = [
      "assets/guys.jpeg",
      "assets/dota2.jpeg",
      "assets/crash.jpeg",
      "assets/ward.jpeg",
      "assets/free.jpeg",
      "assets/dota.jpeg",
    ];
    //Para esto se uso un package llamado Swiper
    //Pueden verlo en la siguiente ruta: https://pub.dev/packages/flutter_swiper
    return Container(
      margin: EdgeInsets.only(top: 20.0),
      child: Swiper(
        layout: SwiperLayout.STACK,
        itemBuilder: (BuildContext context, int index) {
          return Stack(
            children: [
              Container(
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(20.0),
                  image: DecorationImage(
                    image: AssetImage(listImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                bottom: 20.0,
                left: 20.0,
                child: Container(
                  padding: EdgeInsets.symmetric(
                    horizontal: 10.0,
                    vertical: 5.0,
                  ),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(6.0),
                    color: Colors.white54,
                  ),
                  child: RichText(
                    text: TextSpan(
                      text: "●",
                      style: TextStyle(
                          color: Colors.red,
                          fontSize: 12.0,
                          fontWeight: FontWeight.bold),
                      children: [
                        TextSpan(
                          text: "  450K",
                          style: TextStyle(
                            fontSize: 14.0,
                            color: Colors.black,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          );
        },
        itemWidth: 290.0,
        itemHeight: 380.0,
        autoplay: true,
        itemCount: listImages.length,
      ),
    );
  }
}
