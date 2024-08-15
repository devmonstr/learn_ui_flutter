import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyInvest extends StatefulWidget {
  const MyInvest({super.key});

  @override
  State<MyInvest> createState() => _MyInvestState();
}

class _MyInvestState extends State<MyInvest> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: [
            Container(
              color: Color.fromARGB(255, 198, 149, 253),
              child: Column(
                children: [
                  Padding(
                    padding: const EdgeInsets.all(0.0),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: EdgeInsets.fromLTRB(25, 30, 20, 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Invest',
                                style: TextStyle(
                                    fontSize: 30, fontWeight: FontWeight.bold),
                              ),
                              SizedBox(
                                height: 20,
                              ),
                              Row(
                                children: <Widget>[
                                  new Flexible(
                                    child: SizedBox(
                                      height: 45,
                                      width:
                                          MediaQuery.of(context).size.width * 1,
                                      child: TextFormField(
                                        decoration: const InputDecoration(
                                          hoverColor: Colors.white,
                                          focusColor: Colors.white,
                                          fillColor: Colors.white,
                                          filled: true,
                                          prefixIcon: Padding(
                                            padding: EdgeInsets.fromLTRB(
                                                20, 0, 20, 0),
                                            child: Icon(Icons.search),
                                          ),
                                          hintText: 'What are you looking for?',
                                          border: OutlineInputBorder(
                                              borderRadius: BorderRadius.all(
                                                  Radius.circular(30))),
                                        ),
                                      ),
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  IconButton(
                                      style: ButtonStyle(
                                          backgroundColor:
                                              MaterialStatePropertyAll(
                                                  Colors.white)),
                                      iconSize: 25,
                                      onPressed: () {},
                                      icon: Icon(Icons.tune)),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          height: 30, // Set the height of the ListView
                          child: ListView(
                            scrollDirection: Axis.horizontal,
                            padding: EdgeInsets.symmetric(horizontal: 25.0),
                            children: <Widget>[
                              InvestmentButton(text: 'US Stock'),
                              SizedBox(width: 10), // Space between buttons
                              InvestmentButton(text: 'Thai Stock'),
                              SizedBox(width: 10),
                              InvestmentButton(text: 'Mutual Fund'),
                              SizedBox(width: 10),
                              InvestmentButton(text: 'Gold'),
                            ],
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        )
                      ],
                    ),
                  ),
                  Container(
                    width: MediaQuery.of(context).size.width * 1,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.vertical(
                        top: Radius.circular(25.0),
                      ),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.fromLTRB(30, 30, 30, 0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Trending',
                            style: TextStyle(
                                fontSize: 27, fontWeight: FontWeight.bold),
                          ),
                          Text('Popular Investment styles and themes'),
                          SizedBox(
                            height: 20,
                          ),
                          Wrap(
                            spacing: 8, // horizontal space between tags
                            runSpacing: 8, // vertical space between tags
                            children: [
                              MyTrendingButton(
                                text: 'Morningstar Research',
                              ),
                              MyTrendingButton(
                                text: 'Worldquant',
                              ),
                              MyTrendingButton(
                                text: 'Most Bought Stock',
                              ),
                              MyTrendingButton(
                                text: 'BlackRock',
                              ),
                              MyTrendingButton(
                                text: 'Trend Template',
                              ),
                              MyTrendingButton(
                                text: 'Most DCA',
                              ),
                              MyTrendingButton(
                                text: 'Jim Simons',
                              ),
                              MyTrendingButton(
                                text: 'Most Bought ETF',
                              ),
                            ],
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Container(
                            height: 70,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: Color.fromARGB(83, 239, 247, 132)),
                            child: Padding(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 20),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Icon(
                                    Icons.calendar_month_rounded,
                                    size: 50,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        'US Stock Investment with',
                                        style: TextStyle(
                                            fontWeight: FontWeight.bold),
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            'DCA!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold),
                                          ),
                                          Text(
                                            ' Available now!',
                                            style: TextStyle(
                                                fontWeight: FontWeight.bold,
                                                color: Color.fromARGB(
                                                    255, 40, 228, 46)),
                                          )
                                        ],
                                      ),
                                    ],
                                  ),
                                  SizedBox(
                                    height: 25,
                                    child: ElevatedButton(
                                      style: ButtonStyle(
                                        backgroundColor:
                                            MaterialStatePropertyAll(
                                                Color.fromARGB(
                                                    255, 243, 250, 145)),
                                        padding: MaterialStatePropertyAll(
                                            EdgeInsets.fromLTRB(10, 0, 10, 0)),
                                      ),
                                      onPressed: () {},
                                      child: Text(
                                        'Read More',
                                        style: TextStyle(fontSize: 11),
                                      ),
                                    ),
                                  )
                                ],
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Row(
                            children: [
                              Icon(
                                Icons.crisis_alert,
                                color: Color.fromARGB(255, 107, 240, 80),
                                size: 20,
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                'Dime! Magic Chart',
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 20),
                              )
                            ],
                          ),
                          Text(
                            'Automated price pattern intelligence by Dime!',
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            width: MediaQuery.of(context).size.width * 1,
                            height: MediaQuery.of(context).size.height * 0.10,
                            child: Card(
                              elevation: 0.4,
                              color: Color.fromARGB(255, 255, 255, 255),
                              shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(12.0),
                              ),
                              child: Padding(
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Row(
                                  children: [
                                    Icon(
                                      Icons.pie_chart,
                                      color: Color.fromARGB(255, 107, 240, 80),
                                      size: 30,
                                    ),
                                    SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Chart Pattern',
                                      style: TextStyle(
                                          fontSize: 17,
                                          fontWeight: FontWeight.bold),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 30,
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Row(
                                children: [
                                  Icon(
                                    Icons.crisis_alert,
                                    color: Color.fromARGB(255, 107, 240, 80),
                                    size: 20,
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    'Dime! ETF Pick',
                                    style: TextStyle(
                                        fontWeight: FontWeight.bold,
                                        fontSize: 20),
                                  ),
                                ],
                              ),
                              Row(
                                children: <Widget>[
                                  InkWell(
                                    focusColor: Colors.transparent,
                                    hoverColor: Colors.transparent,
                                    splashColor: Colors.transparent,
                                    highlightColor: Colors.transparent,
                                    onTap: () {},
                                    child: Icon(
                                      FontAwesomeIcons.arrowRight,
                                      size: 20,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          ),
                          Text(
                            'Carefully slected by KKPS analysts',
                            style: TextStyle(
                              fontSize: 13,
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                          Container(
                            height: 40, // Set the height of the ListView
                            child: ListView(
                              scrollDirection: Axis.horizontal,
                              padding: EdgeInsets.symmetric(horizontal: 0.0),
                              children: <Widget>[
                                DimeETFPickButton(
                                    text: 'Global Equipty',
                                    icons: Icons.wordpress),
                                SizedBox(width: 10), // Space between buttons
                                DimeETFPickButton(
                                    text: 'Europe Equipty',
                                    icons: Icons.circle_notifications_outlined),
                                SizedBox(width: 10),
                                DimeETFPickButton(
                                    text: 'USA Equipty',
                                    icons: Icons.circle_outlined),
                                SizedBox(width: 10),
                                DimeETFPickButton(
                                    text: 'Japan Equipty',
                                    icons: Icons.data_usage_sharp),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 20,
                          ),
                        ],
                      ),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}

class TrendingTag extends StatelessWidget {
  final String text;

  TrendingTag(this.text);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Colors.purple[100],
        borderRadius: BorderRadius.circular(30),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(0.5),
            spreadRadius: 1,
            blurRadius: 3,
            offset: Offset(0, 3), // changes position of shadow
          ),
        ],
      ),
      child: Text(
        text,
        style: TextStyle(
          color: Colors.deepPurple,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class InvestmentButton extends StatelessWidget {
  final String text;

  InvestmentButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {},
      child: Text(text),
      style: ElevatedButton.styleFrom(
        //primary: Colors.deepPurple[200], // Button color
        //onPrimary: Colors.white, // Text color

        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 12),
      ),
    );
  }
}

class DimeETFPickButton extends StatelessWidget {
  final String text;
  final IconData icons;

  DimeETFPickButton({required this.text, required this.icons});

  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {},
      child: Row(
        children: [
          Icon(icons),
          SizedBox(
            width: 5,
          ),
          Text(
            text,
            style: TextStyle(fontSize: 11, fontWeight: FontWeight.bold),
          ),
        ],
      ),
      style: ElevatedButton.styleFrom(
        //primary: Colors.deepPurple[200], // Button color
        //onPrimary: Colors.white, // Text color

        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        padding: EdgeInsets.symmetric(horizontal: 10, vertical: 12),
      ),
    );
  }
}

class MyTrendingButton extends StatelessWidget {
  final String text;

  MyTrendingButton({required this.text});

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      style: ButtonStyle(
          padding:
              MaterialStatePropertyAll(EdgeInsets.fromLTRB(10, 15, 10, 15))),
      onPressed: () {},
      child: Text(
        text,
        style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
      ),
    );
  }
}
