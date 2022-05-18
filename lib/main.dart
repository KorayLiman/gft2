import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> with TickerProviderStateMixin {
  late AnimationController _MyAnimController;
  late Animation _animation;
  late Animation _animation2;
  late Animation _animation3;
  late TabController _tabcontroller;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    _tabcontroller = TabController(length: 3, vsync: this);
    _MyAnimController =
        AnimationController(duration: Duration(seconds: 2), vsync: this);
    _animation = Tween<double>(begin: 24, end: 72).animate(_MyAnimController);
    _animation2 = Tween<double>(begin: 12, end: 30).animate(_MyAnimController);
    _animation3 = AlignmentTween(begin: Alignment(0, 0), end: Alignment(0, 1))
        .animate(_MyAnimController);
    _MyAnimController.addListener(() {
      setState(() {});
    });
    _MyAnimController.forward();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Hediye'),
        ),
        body: TabBarView(
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      alignment: _animation3.value,
                      child: Icon(
                        Icons.favorite,
                        color: Colors.pink,
                        size: _animation.value,
                      ),
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                  ],
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                    Text(
                      "Habibe Özdemir'e",
                      style: TextStyle(fontSize: _animation2.value),
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                  ],
                ),
                Text(
                  "bir hediyedir",
                  style: TextStyle(fontSize: _animation2.value),
                ),
                SizedBox(
                  height: 40,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                    SizedBox(
                      width: 20,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: _animation.value,
                    ),
                  ],
                ),
              ],
            ),
          ],
          controller: _tabcontroller,
        ),
        bottomNavigationBar: Container(
          color: Colors.blue,
          height: 50,
          child: TabBar(controller: _tabcontroller, tabs: [
            Tab(
              icon: Icon(Icons.first_page),
            )
          ]),
        ),
      ),
    );
  }
}
