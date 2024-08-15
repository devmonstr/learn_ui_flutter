import 'package:learn_ui_flutter/screens/myActivitysScreen.dart';
import 'package:learn_ui_flutter/screens/myAssetsScreen.dart';
import 'package:learn_ui_flutter/screens/myCashScreen.dart';
import 'package:learn_ui_flutter/screens/myHomeScreen.dart';
import 'package:learn_ui_flutter/screens/myInvestScreen.dart';
import 'package:learn_ui_flutter/screens/myMeScreen.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

void main() {
  runApp(
    const MyApp(),
  );
  //Start UI clone on 08/04/2024 - DD/MM/YYYY
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Dime Clone',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.white),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Dime Clone'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  //var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  //bool _tileExpanded = true;

  int _selectedIndex = 0;
  static const List<Widget> _widgetOptions = <Widget>[
    MyHome(), // My Home Screen
    MyInvest(), // My Invest Screen
    MyCash(), // My Cash Screen
    MyAssets(), // My Assets Screen
    MyActivity(), // My Activity Screen
    MyMe(), // My Me Screen
  ];

  void _onItemTapped(int index) {
    setState(() {
      _selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: _widgetOptions.elementAt(_selectedIndex),
      ),
      //bottomNavigationBar: myBottomNavigationBar(),
      bottomNavigationBar: BottomNavigationBar(
        iconSize: 21,
        selectedFontSize: 11,
        unselectedFontSize: 11,
        selectedLabelStyle: TextStyle(fontWeight: FontWeight.bold),
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
            activeIcon: Icon(
              FontAwesomeIcons.solidClock,
            ),
            label: 'Activity',
            tooltip: 'Activity',
          ),
          BottomNavigationBarItem(
            icon: Icon(
              FontAwesomeIcons.user,
            ),
            activeIcon: Icon(FontAwesomeIcons.solidUser),
            label: 'Me',
            tooltip: 'Me',
          ),
        ],
        currentIndex: _selectedIndex,
        selectedItemColor: Colors.black,
        onTap: _onItemTapped,
      ),
    );
  }
}

class DialogExample extends StatelessWidget {
  const DialogExample({super.key});

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('AlertDialog Title'),
          content: const Text('AlertDialog description'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'Cancel'),
              child: const Text('Cancel'),
            ),
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
