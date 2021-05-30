import 'package:flutter/material.dart';
import 'package:flutter_application_discovery/theme/app_theme.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter_application_discovery/pages/following/following_page.dart';
import 'package:flutter_application_discovery/pages/home/home_page.dart';

class DashBoardPage extends StatefulWidget {
  DashBoardPage({Key key}) : super(key: key);

  @override
  _DashBoardPageState createState() => _DashBoardPageState();
}

class _DashBoardPageState extends State<DashBoardPage> {
  int _selectindex = 0;

  void _tabIndex(int index) => setState(() => _selectindex = index);

  List<Widget> screems = [
    HomePage(),
    FollowingPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screems[_selectindex],
      bottomNavigationBar: ClipRRect(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.0),
          topRight: Radius.circular(20.0),
        ),
        child: BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          backgroundColor: AppTheme.kblack,
          selectedItemColor: AppTheme.kpurple,
          unselectedItemColor: Colors.white54,
          items: [
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/home.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 0 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/home.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/favorite.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 1 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/favorite.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/layers.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 2 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/layers.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            ),
            BottomNavigationBarItem(
              activeIcon: SvgPicture.asset(
                "assets/user.svg",
                height: 20.0,
                color: Colors.white,
              ),
              label: _selectindex == 3 ? "●" : "",
              icon: SvgPicture.asset(
                "assets/user.svg",
                height: 20.0,
                color: Colors.white54,
              ),
            )
          ],
          currentIndex: _selectindex,
          onTap: _tabIndex,
        ),
      ),
    );
  }
}
