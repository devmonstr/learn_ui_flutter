import 'package:chart_sparkline/chart_sparkline.dart';
import 'package:flutter/material.dart';

class MyWatchList extends StatelessWidget {
  MyWatchList({
    super.key,
    //required this.data,
  });

  //final List<double> data;
  var data = [0.0, 1.0, 1.5, 2.0, 0.0, 0.0, -0.5, -1.0, -0.5, 0.0, 0.0];
  //var data = [0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0, 0.0];
  @override
  Widget build(BuildContext context) {
    return InkWell(
      focusColor: Colors.transparent,
      hoverColor: Colors.transparent,
      splashColor: Colors.transparent,
      highlightColor: Colors.transparent,
      onTap: () => showDialog<String>(
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
      child: Padding(
        padding: const EdgeInsets.fromLTRB(10, 15, 0, 0),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                          color: const Color.fromARGB(255, 217, 195, 255)),
                      child: Padding(
                        padding: const EdgeInsets.fromLTRB(4, 2, 6, 2),
                        child: Row(
                          children: [
                            CircleAvatar(
                              radius: 4,
                              child: Image.asset('assets/us.png'),
                            ),
                            SizedBox(
                              width: 5,
                            ),
                            Text(
                              'US Stock',
                              style: TextStyle(
                                  fontSize: 7, color: Colors.deepPurple),
                            ),
                          ],
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 6,
                    ),
                    Text(
                      'ACWI',
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 13),
                    ),
                  ],
                ),
                Container(
                  width: 100,
                  height: 50,
                  child: Sparkline(
                    //maxLine: true,
                    //averageLine: true,
                    //backgroundColor: Color.fromARGB(255, 215, 255, 217),
                    data: data,
                    lineColor: Color.fromARGB(255, 32, 248, 43),
                    fillMode: FillMode.below,
                    fillGradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color.fromARGB(255, 165, 255, 170),
                        Color.fromARGB(255, 255, 255, 255)
                      ],
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  //mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Icon(
                          Icons.arrow_outward,
                          size: 15,
                          color: const Color.fromARGB(255, 32, 248, 43),
                        ),
                        Text(
                          "0.12%",
                          style: TextStyle(
                              color: Color.fromARGB(255, 32, 248, 43)),
                        ),
                      ],
                    ),
                    Text('1375.58')
                  ],
                ),
              ],
            ),
            Divider(
              color: Color.fromARGB(255, 241, 241, 241),
            ),
          ],
        ),
      ),
    );
  }
}
