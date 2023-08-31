import 'package:firstproject/src/account.dart';
import 'package:firstproject/src/home.dart';
import 'package:firstproject/src/menu.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  var pages = [HomePage(), Account(), Menu()];

  int currentIndex = 0;

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            appBar: AppBar(
              title: Text("my first app"),
            ),
            drawer: Drawer(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    Container(
                      height: 200,
                      padding: EdgeInsets.only(top: 50),
                      width: MediaQuery.sizeOf(context).width,
                      decoration: BoxDecoration(color: Colors.amber),
                      child: Column(
                        children: [
                          Stack(
                            alignment: Alignment.bottomRight,
                            children: [
                              Container(
                                height: 50,
                                width: 50,
                                child: Image.asset(
                                  "assets/img.jpg",
                                  fit: BoxFit.fill,
                                ),
                              ),
                              Positioned(
                                  top: 20,
                                  left: 20,
                                  right: 20,
                                  child: Container(
                                    height: 20,
                                    width: 20,
                                    decoration: BoxDecoration(
                                        color: Colors.green,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(20 / 2))),
                                  ))
                            ],
                          ),
                          Text("demo name"),
                          Text("demo@email.com")
                        ],
                      ),
                    )
                  ],
                ),
              ),
            ),
            bottomNavigationBar: BottomNavigationBar(
              items: [
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm), label: "home"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm), label: "menu"),
                BottomNavigationBarItem(
                    icon: Icon(Icons.access_alarm),
                    label: "account"),
              ],
              onTap: (index) {
                setState(() {
                  currentIndex = index;
                });
              },
            ),
            body: pages[currentIndex]));
  }
}
