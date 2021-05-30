import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_discovery/theme/app_theme.dart';
import 'package:flutter_application_discovery/widgets/widget_title.dart';

import 'widgets/banner_live.dart';
import 'widgets/banner_recommend.dart';
import 'widgets/games.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kbackground,
      appBar: AppBar(
        backgroundColor: AppTheme.kbackground,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: "Disc",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w900),
            children: [
              TextSpan(
                text: "o",
                style: TextStyle(color: AppTheme.kpurple),
              ),
              TextSpan(text: "very"),
            ],
          ),
        ),
        actions: [
          SvgPicture.asset(
            "assets/search.svg",
            height: 20.0,
            color: Colors.black87,
          ),
          SizedBox(width: 25.0),
          SvgPicture.asset(
            "assets/email.svg",
            height: 18.0,
            color: Colors.black87,
          ),
          SizedBox(width: 20.0)
        ],
      ),
      body: Column(
        children: [
          SizedBox(height: 20.0),
          BannerLive(),
          WidgetTitle(title: 'Recommended', horizontal: 20.0),
          BannerRecommend(),
          Games()
        ],
      ),
    );
  }
}
