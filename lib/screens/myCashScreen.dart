import 'package:flutter/cupertino.dart';

class MyCash extends StatefulWidget {
  const MyCash({super.key});

  @override
  State<MyCash> createState() => _MyCashState();
}

class _MyCashState extends State<MyCash> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Cash'),
      ),
    );
  }
}
