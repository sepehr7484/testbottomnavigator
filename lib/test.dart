import 'package:flutter/material.dart';
import 'package:testcode/secendpage.dart';

class Test extends StatefulWidget {
  @override
  _TestState createState() => _TestState();
}

class _TestState extends State<Test> with SingleTickerProviderStateMixin {
  late TabController tabController;
  int index = 0;
  @override
  void initState() {
    // TODO: implement initState
    tabController = TabController(length: 2, vsync: this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: TabBarView(controller: tabController, children: [
        Center(
          child: RaisedButton(
            onPressed: () {
              setState(() {
                Navigator.push(context, MaterialPageRoute(builder: (context) {
                  return Secend();
                }));
              });
            },
            child: Text('Click Me'),
          ),
        ),
        Center(
          child: RaisedButton(
            onPressed: () {},
            child: Text('2'),
          ),
        ),
      ]),
      bottomNavigationBar: Container(
        width: double.infinity,
        height: 50,
        color: Colors.blue,
        child: TabBar(
            automaticIndicatorColorAdjustment: true,
            indicatorColor: Colors.red,
            indicator: BoxDecoration(color: Colors.amberAccent),
            controller: tabController,
            tabs: [
              Icon(
                Icons.print,
                color: Colors.red,
                size: 20,
              ),
              Icon(
                Icons.print,
                color: Colors.red,
                size: 20,
              ),
            ]),
      ),
    );
  }
}
