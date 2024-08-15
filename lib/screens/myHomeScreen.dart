import 'package:learn_ui_flutter/components/myArticlesList.dart';
import 'package:learn_ui_flutter/components/myBannerList.dart';
import 'package:learn_ui_flutter/components/myLastestList.dart';
import 'package:learn_ui_flutter/components/myPopularsList.dart';
import 'package:learn_ui_flutter/components/myTileWatchList.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MyHome extends StatefulWidget {
  const MyHome({super.key});

  @override
  State<MyHome> createState() => _MyHomeState();
}

class _MyHomeState extends State<MyHome> {
  bool _tileExpanded = true;
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Center(
        child: Column(
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                mainAxisSize: MainAxisSize.max,
                children: [
                  Row(
                    children: [
                      SizedBox(
                        height: 30,
                        child: CircleAvatar(
                          child: ClipOval(
                            child: Opacity(
                                opacity: 0.6,
                                child: Image.asset(
                                    fit: BoxFit.cover, 'assets/profile.png')),
                          ),
                        ),
                      ),
                      Text(
                        'Hi, Dime Clone!',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  Badge(
                    isLabelVisible: true,
                    backgroundColor: Colors.greenAccent,
                    child: Icon(
                      (FontAwesomeIcons.commentDots),
                      size: 20,
                    ),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 15,
            ),
            MyBanners(), // My banners list component.
            SizedBox(
              height: 10,
            ),
            SizedBox(
              height: 0,
            ),
            Container(
              height: 100,
              child: ListView.builder(
                physics: BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: 20,
                itemBuilder: (BuildContext context, int index) {
                  EdgeInsets padding = EdgeInsets.fromLTRB(0, 0, 0, 0);
                  if (index == 0) {
                    padding = EdgeInsets.fromLTRB(28, 0, 0, 0);
                  } else if (index == 19) {
                    padding = EdgeInsets.fromLTRB(0, 0, 10, 0);
                  }
                  return Padding(
                    padding: padding,
                    child: SizedBox(
                      height: 100,
                      width: 100,
                      child: Card(
                        elevation: 0,
                        child: Container(
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.all(Radius.circular(10)),
                            boxShadow: [
                              BoxShadow(
                                color: Color.fromARGB(255, 241, 240, 240),
                                spreadRadius: 2.0,
                                blurRadius: 5.0,
                                offset: Offset(0, 0),
                              ),
                            ],
                          ),
                          child: Column(
                            children: <Widget>[
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 15, 0, 0),
                                child: Row(
                                  children: [
                                    CircleAvatar(
                                      radius: 6,
                                      child: Image.asset('assets/thailand.png'),
                                    ),
                                    SizedBox(
                                      width: 5,
                                    ),
                                    Text(
                                      'SET',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 12),
                                    )
                                  ],
                                ),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  //mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Row(
                                      children: [
                                        Icon(
                                          Icons.arrow_outward,
                                          size: 15,
                                          color: const Color.fromARGB(
                                              255, 32, 248, 43),
                                        ),
                                        Text(
                                          "0.12%",
                                          style: TextStyle(
                                              fontSize: 12,
                                              color: Color.fromARGB(
                                                  255, 32, 248, 43)),
                                        )
                                      ],
                                    ),
                                    Text(
                                      '1375.58',
                                      style: TextStyle(
                                          fontWeight: FontWeight.bold,
                                          fontSize: 13),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Watchlist',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      ),
                      SizedBox(
                        width: 10,
                      ),
                      Icon(
                        Icons.info_outline,
                        size: 17,
                        color: Colors.grey,
                      )
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
                          FontAwesomeIcons.plus,
                          size: 23,
                        ),
                      ),
                      SizedBox(
                        width: 35,
                      ),
                      InkWell(
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {
                          setState(() {
                            _tileExpanded = !_tileExpanded;
                          });
                        },
                        child: Icon(
                          _tileExpanded
                              ? FontAwesomeIcons.chevronUp
                              : FontAwesomeIcons.chevronDown,
                          size: 18,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            AnimatedCrossFade(
              firstChild: Container(
                child: Column(
                  children: [
                    Padding(
                      padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text('6 Items'),
                          Text('Daily Percent Change'),
                        ],
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                      child: SizedBox(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: <Widget>[
                            MyWatchList(),
                            MyWatchList(),
                            MyWatchList(),
                            MyWatchList(),
                            MyWatchList(),
                            MyWatchList(),
                            SizedBox(
                              height: 10,
                            ),
                            InkWell(
                              focusColor: Colors.transparent,
                              hoverColor: Colors.transparent,
                              splashColor: Colors.transparent,
                              highlightColor: Colors.transparent,
                              onTap: () {
                                setState(() {
                                  _tileExpanded = !_tileExpanded;
                                });
                              },
                              child: SizedBox(
                                width: 100,
                                height: 30,
                                child: Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5, color: Colors.grey),
                                      borderRadius: BorderRadius.circular(20),
                                      color:
                                          Color.fromARGB(255, 255, 255, 255)),
                                  child: Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(5, 0, 5, 0),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.center,
                                      children: [
                                        Text(
                                          'View Less',
                                          style: TextStyle(
                                              fontSize: 10,
                                              color: Colors.black),
                                        ),
                                        SizedBox(
                                          width: 0,
                                        ),
                                        Icon(
                                          Icons.expand_less_sharp,
                                          size: 15,
                                        )
                                      ],
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                    )
                  ],
                ),
              ),
              secondChild: Container(),
              crossFadeState: _tileExpanded
                  ? CrossFadeState.showFirst
                  : CrossFadeState.showSecond,
              duration: Duration(milliseconds: 200),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  Row(
                    children: [
                      Text(
                        'Articles',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
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
            ),
            SizedBox(
              height: 10,
            ),
            MyArticles(), //My articles list component.
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Popular',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Column(
                      children: [
                        MyPopularList(
                          number: '1',
                        ),
                        MyPopularList(
                          number: '2',
                        ),
                        MyPopularList(
                          number: '3',
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
              child: Column(
                children: [
                  Row(
                    children: [
                      Text(
                        'Lastest',
                        style: TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 15),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  MyLastests(),
                  MyLastests(),
                  MyLastests(),
                  SizedBox(
                    height: 5,
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      InkWell(
                        focusColor: Colors.transparent,
                        hoverColor: Colors.transparent,
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        onTap: () {},
                        child: Text(
                          'View More ->',
                          style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 11,
                              color: Colors.blue),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: 40,
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}

//backup
/**
 * body: SafeArea(
        child: SingleChildScrollView(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            height: 30,
                            child: CircleAvatar(
                              child: ClipOval(
                                child: Opacity(
                                    opacity: 0.6,
                                    child: Image.asset(
                                        fit: BoxFit.cover,
                                        'assets/profile.png')),
                              ),
                            ),
                          ),
                          Text(
                            'Hi, Dime Clone!',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Badge(
                        isLabelVisible: true,
                        backgroundColor: Colors.greenAccent,
                        child: Icon(
                          (FontAwesomeIcons.commentDots),
                          size: 20,
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 15,
                ),
                MyBanners(), // My banners list component.
                SizedBox(
                  height: 10,
                ),
                SizedBox(
                  height: 0,
                ),
                Container(
                  height: 100,
                  child: ListView.builder(
                    physics: BouncingScrollPhysics(),
                    scrollDirection: Axis.horizontal,
                    shrinkWrap: true,
                    itemCount: 20,
                    itemBuilder: (BuildContext context, int index) {
                      EdgeInsets padding = EdgeInsets.fromLTRB(0, 0, 0, 0);
                      if (index == 0) {
                        padding = EdgeInsets.fromLTRB(28, 0, 0, 0);
                      } else if (index == 19) {
                        padding = EdgeInsets.fromLTRB(0, 0, 10, 0);
                      }
                      return Padding(
                        padding: padding,
                        child: SizedBox(
                          height: 100,
                          width: 100,
                          child: Card(
                            elevation: 0,
                            child: Container(
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(10)),
                                boxShadow: [
                                  BoxShadow(
                                    color: Color.fromARGB(255, 241, 240, 240),
                                    spreadRadius: 2.0,
                                    blurRadius: 5.0,
                                    offset: Offset(0, 0),
                                  ),
                                ],
                              ),
                              child: Column(
                                children: <Widget>[
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 15, 0, 0),
                                    child: Row(
                                      children: [
                                        CircleAvatar(
                                          radius: 6,
                                          child: Image.asset(
                                              'assets/thailand.png'),
                                        ),
                                        SizedBox(
                                          width: 5,
                                        ),
                                        Text(
                                          'SET',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 12),
                                        )
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding:
                                        const EdgeInsets.fromLTRB(10, 10, 0, 0),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      //mainAxisAlignment: MainAxisAlignment.start,
                                      children: [
                                        Row(
                                          children: [
                                            Icon(
                                              Icons.arrow_outward,
                                              size: 15,
                                              color: const Color.fromARGB(
                                                  255, 32, 248, 43),
                                            ),
                                            Text(
                                              "0.12%",
                                              style: TextStyle(
                                                  fontSize: 12,
                                                  color: Color.fromARGB(
                                                      255, 32, 248, 43)),
                                            )
                                          ],
                                        ),
                                        Text(
                                          '1375.58',
                                          style: TextStyle(
                                              fontWeight: FontWeight.bold,
                                              fontSize: 13),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      );
                    },
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            'Watchlist',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          Icon(
                            Icons.info_outline,
                            size: 17,
                            color: Colors.grey,
                          )
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
                              FontAwesomeIcons.plus,
                              size: 23,
                            ),
                          ),
                          SizedBox(
                            width: 35,
                          ),
                          InkWell(
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {
                              setState(() {
                                _tileExpanded = !_tileExpanded;
                              });
                            },
                            child: Icon(
                              _tileExpanded
                                  ? FontAwesomeIcons.chevronUp
                                  : FontAwesomeIcons.chevronDown,
                              size: 18,
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                _tileExpanded
                    ? Container(
                        child: Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  Text('6 Items'),
                                  Text('Daily Percent Change'),
                                ],
                              ),
                            ),
                            Padding(
                              padding: const EdgeInsets.fromLTRB(20, 0, 30, 0),
                              child: SizedBox(
                                child: Column(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: <Widget>[
                                    MyWatchList(),
                                    MyWatchList(),
                                    MyWatchList(),
                                    MyWatchList(),
                                    MyWatchList(),
                                    MyWatchList(),
                                    SizedBox(
                                      height: 10,
                                    ),
                                    InkWell(
                                      focusColor: Colors.transparent,
                                      hoverColor: Colors.transparent,
                                      splashColor: Colors.transparent,
                                      highlightColor: Colors.transparent,
                                      onTap: () {
                                        setState(() {
                                          _tileExpanded = !_tileExpanded;
                                        });
                                      },
                                      child: SizedBox(
                                        width: 100,
                                        height: 30,
                                        child: Container(
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  width: 0.5,
                                                  color: Colors.grey),
                                              borderRadius:
                                                  BorderRadius.circular(20),
                                              color: Color.fromARGB(
                                                  255, 255, 255, 255)),
                                          child: Padding(
                                            padding: const EdgeInsets.fromLTRB(
                                                5, 0, 5, 0),
                                            child: Row(
                                              mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                              children: [
                                                Text(
                                                  'View Less',
                                                  style: TextStyle(
                                                      fontSize: 10,
                                                      color: Colors.black),
                                                ),
                                                SizedBox(
                                                  width: 0,
                                                ),
                                                Icon(
                                                  Icons.expand_less_sharp,
                                                  size: 15,
                                                )
                                              ],
                                            ),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            )
                          ],
                        ),
                      ) // inherits the delay & duration from move
                    : Container(), // inherits the delay & duration from move,
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Row(
                        children: [
                          Text(
                            'Articles',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 20),
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
                ),
                SizedBox(
                  height: 10,
                ),
                MyArticles(), //My articles list component.
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Popular',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Column(
                          children: [
                            MyPopularList(
                              number: '1',
                            ),
                            MyPopularList(
                              number: '2',
                            ),
                            MyPopularList(
                              number: '3',
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.fromLTRB(30, 20, 30, 0),
                  child: Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            'Lastest',
                            style: TextStyle(
                                fontWeight: FontWeight.bold, fontSize: 15),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      MyLastests(),
                      MyLastests(),
                      MyLastests(),
                      SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          InkWell(
                            focusColor: Colors.transparent,
                            hoverColor: Colors.transparent,
                            splashColor: Colors.transparent,
                            highlightColor: Colors.transparent,
                            onTap: () {},
                            child: Text(
                              'View More ->',
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 11,
                                  color: Colors.blue),
                            ),
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 40,
                      )
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
 */
