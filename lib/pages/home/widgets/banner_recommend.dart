import 'package:flutter/material.dart';
import 'package:flutter_application_discovery/theme/app_theme.dart';

class BannerRecommend extends StatelessWidget {
  const BannerRecommend({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 20.0),
      decoration: BoxDecoration(
        border: Border.all(color: Colors.grey[300]),
        borderRadius: BorderRadius.circular(20.0),
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: 130.0,
            height: 165.0,
            margin: EdgeInsets.only(right: 15.0),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20.0),
              image: DecorationImage(
                colorFilter: new ColorFilter.mode(
                  AppTheme.kpurple.withOpacity(0.4),
                  BlendMode.color,
                ),
                image: AssetImage('assets/team.jpeg'),
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 5.0),
              Text(
                'Teamfight Tactics',
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 15.0,
                  fontWeight: FontWeight.w800,
                ),
              ),
              SizedBox(height: 10.0),
              Text(
                'Take a look at a new design ',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(
                'Take a look at a new design ',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              Text(
                'Take a look at a new design ',
                style: TextStyle(
                  color: Colors.black54,
                ),
              ),
              SizedBox(height: 20.0),
              Container(
                width: 200.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '29.3k Viewers',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                    Text(
                      '1.6M Followers',
                      style: TextStyle(
                        fontSize: 11.0,
                        color: Colors.black,
                        fontWeight: FontWeight.w800,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 10.0),
              Container(
                width: 215.0,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppTheme.kpurple,
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text(
                        '#Esports',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: Colors.pink[300],
                        borderRadius: BorderRadius.circular(7.0),
                      ),
                      child: Text(
                        '#Card & Board Games',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 11.0,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
