import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class myBottomNavigationBar extends StatelessWidget {
  const myBottomNavigationBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      iconSize: 21,
      selectedItemColor: Colors.black,
      selectedFontSize: 11,
      unselectedFontSize: 11,
      selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
      currentIndex: 0,
      type: BottomNavigationBarType.fixed,
      items: const <BottomNavigationBarItem>[
        BottomNavigationBarItem(
          icon: Badge(
            isLabelVisible: true,
            backgroundColor: Colors.greenAccent,
            child: Icon(
              FontAwesomeIcons.house,
            ),
          ),
          label: 'Home',
          tooltip: 'Home',
        ),
        BottomNavigationBarItem(
          icon: Icon(FontAwesomeIcons.chartLine),
          label: 'Invest',
          tooltip: 'Invest',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.wallet,
          ),
          label: 'Cash',
          tooltip: 'Cash',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.chartPie,
          ),
          label: 'Assets',
          tooltip: 'Assets',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.clockRotateLeft,
          ),
          label: 'Activity',
          tooltip: 'Activity',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            FontAwesomeIcons.solidUser,
          ),
          label: 'Me',
          tooltip: 'Me',
        ),
      ],
    );
  }
}
