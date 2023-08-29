import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false
        ,
      home: Scaffold(
        appBar: AppBar(
          title: Text("my first app"),
        ),
        body:SingleChildScrollView(
          child: Padding(
            padding: EdgeInsets.all(15),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment:CrossAxisAlignment.start,
              children: [
               Container(
                 height: 300,
                 child: GridView.count(
                   crossAxisCount: 2,
                   mainAxisSpacing: 10,
                   crossAxisSpacing: 10,
                   children: [
                     SizedBox(
                       height: 100,
                       width: 100,
                       child: Container(
                         color: Colors.amber,
                       ),
                     ),
                     SizedBox(
                       height: 100,
                       width: 100,
                       child: Container(
                         color: Colors.blue,
                       ),
                     ),
                     SizedBox(
                       height: 100,
                       width: 100,
                       child: Container(
                         color: Colors.red,
                       ),
                     ),
                     SizedBox(
                       height: 100,
                       width: 100,
                       child: Container(
                         color: Colors.green,
                       ),
                     ),
                   ],
                 ),
               ),
                Container(
                  height: 200,
                  child: ListView(
                    children: const [
                      ListTile(
                        title: Text("title goes here"),
                        subtitle: Text("here is the discription"),
                        leading: Icon(Icons.access_alarm),
                        trailing: Icon(Icons.remove_circle),
                      ),
                      ListTile(
                        title: Text("title goes here"),
                        subtitle: Text("here is the discription"),
                        leading: Icon(Icons.access_alarm),
                        trailing: Icon(Icons.remove_circle),
                      ),ListTile(
                        title: Text("title goes here"),
                        subtitle: Text("here is the discription"),
                        leading: Icon(Icons.access_alarm),
                        trailing: Icon(Icons.remove_circle),
                      ),ListTile(
                        title: Text("title goes here"),
                        subtitle: Text("here is the discription"),
                        leading: Icon(Icons.access_alarm),
                        trailing: Icon(Icons.remove_circle),
                      ),ListTile(
                        title: Text("title goes here"),
                        subtitle: Text("here is the discription"),
                        leading: Icon(Icons.access_alarm),
                        trailing: Icon(Icons.remove_circle),
                      ),
                    ],
                  ),
                ),
                
                Container(
                  height: 100,
                  width: 100,
                  child: Image.asset("assets/img.jpg",fit: BoxFit.fill,),
                ),
                Text("name:demo name"),
                Text("name:email@email.com"),
              ],
            ),
          ),
        )
      )
    );
  }
}

