import 'package:flutter/cupertino.dart';

class MyActivity extends StatefulWidget {
  const MyActivity({super.key});

  @override
  State<MyActivity> createState() => _MyActivityState();
}

class _MyActivityState extends State<MyActivity> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Activity'),
      ),
    );
  }
}
