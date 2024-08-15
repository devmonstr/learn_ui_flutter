import 'package:flutter/cupertino.dart';

class MyAssets extends StatefulWidget {
  const MyAssets({super.key});

  @override
  State<MyAssets> createState() => _MyAssetsState();
}

class _MyAssetsState extends State<MyAssets> {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: Text('Cash'),
      ),
    );
  }
}
