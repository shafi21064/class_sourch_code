import 'package:flutter/material.dart';
class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child:
      SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
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
                  ),
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
                  ),
                  ListTile(
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
              child: Image.asset(
                "assets/img.jpg",
                fit: BoxFit.fill,
              ),
            ),
            Text("name:demo name"),
            Text("name:email@email.com"),
          ],
        )
      )

      ),
    );
  }
}
