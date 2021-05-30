import 'package:flutter/material.dart';
import 'package:flutter_application_discovery/pages/following/widgets/lives.dart';
import 'package:flutter_application_discovery/theme/app_theme.dart';
import 'package:flutter_application_discovery/widgets/widget_title.dart';

import 'widgets/stack_games.dart';

class FollowingPage extends StatelessWidget {
  const FollowingPage({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppTheme.kbackground,
      appBar: AppBar(
        backgroundColor: AppTheme.kbackground,
        elevation: 0,
        title: RichText(
          text: TextSpan(
            text: "F",
            style: TextStyle(
                color: Colors.black,
                fontSize: 25.0,
                fontWeight: FontWeight.w900),
            children: [
              TextSpan(
                text: "o",
                style: TextStyle(color: AppTheme.kpurple),
              ),
              TextSpan(text: "ll"),
              TextSpan(
                text: "o",
                style: TextStyle(
                  color: Colors.pink[200],
                ),
              ),
              TextSpan(text: "wing"),
            ],
          ),
        ),
        actions: [
          CircleAvatar(
            backgroundColor: Colors.red,
            radius: 22.0,
            child: ClipOval(
              child: Image(
                image: NetworkImage(
                  'https://i.pinimg.com/564x/92/05/2c/92052c5a1430055c5d14703d3039952e.jpg',
                ),
              ),
            ),
          ),
          SizedBox(width: 20.0)
        ],
      ),
      body: Container(
        margin: EdgeInsets.symmetric(horizontal: 20.0),
        child: ListView(
          children: [
            StackGames(),
            WidgetTitle(title: "Live channel", horizontal: 0.0),
            Lives(),
          ],
        ),
      ),
    );
  }
}
