import 'package:flutter/material.dart';
import 'package:flutter_application_discovery/theme/app_theme.dart';

class Lives extends StatelessWidget {
  const Lives({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> persons = [
      "Kristin",
      "AuronPlay",
      "OverWatch",
    ];
    List<String> listImages = [
      "assets/live.jpeg",
      "assets/auron.jpeg",
      "assets/over.jpeg",
    ];
    return ListView.builder(
      shrinkWrap: true,
      physics: NeverScrollableScrollPhysics(),
      itemCount: listImages.length,
      itemBuilder: (context, index) {
        return Container(
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: 160.0,
                height: 80.0,
                margin: EdgeInsets.only(right: 15.0, bottom: 20.0),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(12.0),
                  image: DecorationImage(
                    colorFilter: new ColorFilter.mode(
                      AppTheme.kpurple.withOpacity(0.2),
                      BlendMode.color,
                    ),
                    image: AssetImage(listImages[index]),
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    persons[index],
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 15.0,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(height: 5.0),
                  Text(
                    'Live from Kristin! Happy Monday 😀',
                    style: TextStyle(
                      fontSize: 11.0,
                      color: Colors.black54,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(height: 15.0),
                  Row(
                    children: [
                      createBottom(
                        color: Colors.greenAccent[700],
                        text: "#Chatting",
                      ),
                      createBottom(
                        color: Colors.yellow[800],
                        text: "#Anime",
                      ),
                      createBottom(
                        color: Colors.pink[300],
                        text: "#English",
                      ),
                    ],
                  ),
                ],
              ),
            ],
          ),
        );
      },
    );
  }

  //Estoy creando una funcion para reutilizar código
  Widget createBottom({Color color, String text}) {
    return Container(
      margin: EdgeInsets.only(right: 5.0),
      padding: EdgeInsets.all(5.0),
      decoration: BoxDecoration(
        color: color,
        borderRadius: BorderRadius.circular(5.0),
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.white,
          fontSize: 10.0,
          fontWeight: FontWeight.w500,
        ),
      ),
    );
  }
}
