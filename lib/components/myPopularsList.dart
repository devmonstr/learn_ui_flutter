import 'package:flutter/material.dart';

class MyPopularList extends StatelessWidget {
  MyPopularList({
    super.key,
    required this.number,
  });

  final String number;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(
          height: 15,
        ),
        SizedBox(
          height: 70,
          child: Container(
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.all(Radius.circular(10)),
              boxShadow: [
                BoxShadow(
                  color: Color.fromARGB(255, 241, 240, 240),
                  spreadRadius: 2.0,
                  blurRadius: 10.0,
                  offset: Offset(-5, 5),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Padding(
                  padding: const EdgeInsets.fromLTRB(20, 0, 0, 0),
                  child: CircleAvatar(
                    radius: 15,
                    backgroundColor: Colors.blue.shade50,
                    child: Text(
                      '$number',
                      style: TextStyle(
                          color: Colors.blueAccent,
                          fontWeight: FontWeight.bold,
                          fontSize: 15),
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      width: MediaQuery.of(context).size.width * 0.45,
                      child: Text(
                        "Hello , how are you today? This is topice that you are insterested.",
                        textAlign: TextAlign.start,
                        overflow: TextOverflow.ellipsis,
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 13),
                        maxLines: 2,
                      ),
                    ),
                    Text(
                      '19 Mar 2024  2 min read',
                      style: TextStyle(
                          color: const Color.fromARGB(255, 201, 200, 200),
                          fontSize: 9,
                          fontWeight: FontWeight.bold),
                    )
                  ],
                ),
                Padding(
                  padding: const EdgeInsets.all(2.0),
                  child: Image.asset('assets/profile.png'),
                )
              ],
            ),
          ),
        ),
      ],
    );
  }
}
