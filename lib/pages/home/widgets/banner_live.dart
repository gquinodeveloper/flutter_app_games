import 'package:flutter/material.dart';
import 'package:flutter_application_discovery/theme/app_theme.dart';

class BannerLive extends StatelessWidget {
  const BannerLive({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          height: 200.0,
          margin: EdgeInsets.symmetric(horizontal: 20.0),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20.0),
            image: DecorationImage(
              colorFilter: new ColorFilter.mode(
                AppTheme.kpurple.withOpacity(0.4),
                BlendMode.color,
              ),
              image: AssetImage('assets/live.jpeg'),
              fit: BoxFit.cover,
            ),
          ),
        ),
        Positioned(
          bottom: 5.0,
          left: 20.0,
          right: 20.0,
          child: Container(
            margin: EdgeInsets.symmetric(horizontal: 20.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Live from Kristin! Happy Monday 😀',
                  style: TextStyle(
                    fontSize: 11.0,
                    color: Colors.white,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(height: 10.0),
                Row(
                  children: [
                    RichText(
                      text: TextSpan(
                        text: "●",
                        style: TextStyle(
                            color: Colors.red,
                            fontSize: 12.0,
                            fontWeight: FontWeight.bold),
                        children: [
                          TextSpan(
                            text: " LIVE",
                            style: TextStyle(color: Colors.white),
                          ),
                        ],
                      ),
                    ),
                    SizedBox(width: 20.0),
                    Icon(
                      Icons.people_outline,
                      color: Colors.white,
                      size: 18.0,
                    ),
                    SizedBox(width: 5.0),
                    Text(
                      '29k',
                      style: TextStyle(
                        fontSize: 12.0,
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
