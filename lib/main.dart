//import 'dart:html';

import 'package:flutter/material.dart';
import 'count.dart';
import 'train.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  TextEditingController title = TextEditingController();
  @override
  Widget build(BuildContext context) {
    title.text = 'qwq';
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: DefaultTabController(
            length: 3,
            child: Scaffold(
              appBar: AppBar(
                title: TextField(
                  controller: title,
                  decoration: InputDecoration(
                      prefixIcon: Icon(
                        Icons.search,
                        color: Colors.white,
                      ),
                      suffixIcon: IconButton(
                        icon: Icon(Icons.close),
                        onPressed: () {
                          title.text = '';
                        },
                      ),
                      border: InputBorder.none),

                ),
                leading: IconButton(
                  icon: Icon(Icons.menu),
                  color: Colors.black,
                  onPressed: () {},
                ),
                flexibleSpace: Container(
                  decoration: BoxDecoration(color: Colors.pink),
                ),
                //  fit: BoxFit.cover,

                backgroundColor: Colors.amber,
                actions: [
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.search),
                    color: Colors.black,
                  ),
                  IconButton(
                    onPressed: () {},
                    icon: Icon(Icons.more_vert),
                    color: Colors.black,
                  ),
                ],
                bottom: TabBar(tabs: [
                  Tab(
                    icon: Icon(Icons.taxi_alert),
                    text: 'texi',
                  ),
                  Tab(icon: Icon(Icons.add), text: 'add count'),
                  Tab(icon: Icon(Icons.train), text: 'train')
                ]),
                elevation: 2,
              ),
              body: TabBarView(children: [
                //  Column(children: [
                Container(
                  child: ListView(padding: EdgeInsets.all(30), children: [
                    Container(
                      //  transform: Matrix4.rotationZ(0.1),
                      padding: EdgeInsets.all(12),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(24),
                        color: Colors.amber,
                        shape: BoxShape.rectangle,
                      ),
                      width: 300,
                      height: 300,
                      child: Column(
                        children: [
                          ListTile(
                            leading: Icon(
                              Icons.ac_unit_outlined,
                              color: Colors.blue,
                            ),
                          ),
                          Divider(
                            height: 1,
                            thickness: 2,
                            color: Colors.black,
                          ),
                          ListTile(
                            title: Text("yushan"),
                            trailing: Text('piumal'),
                          )
                        ],
                      ),
                    )
                  ]),
                ),
                Count(),
                Train(),
              ]),
            )));
  }
}
