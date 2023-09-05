import 'package:flutter/material.dart';
import 'package:toast/toast.dart';
import 'package:provider/provider.dart';

class LoginView extends StatefulWidget {
  const LoginView({super.key});

  @override
  State<LoginView> createState() => _LoginViewState();
}

class _LoginViewState extends State<LoginView> {
  TextEditingController namecontroller = TextEditingController();
  TextEditingController emailcontroller = TextEditingController();
  TextEditingController numbercontroller = TextEditingController();

  _submitform() async {
    var name = namecontroller.text;
    var email = emailcontroller.text;
    var number = numbercontroller.text;

    if (name.isEmpty || email.isEmpty || number.isEmpty) {
      Toast.show("Toast plugin app",
          duration: Toast.lengthShort, gravity: Toast.bottom);
    }
  }

  dynamic values = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Contact Page'),
      ),
      body: Container(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 100,
              width: 100,
              child: Text(
                '$values',
                style: TextStyle(color: Colors.black),
              ),
              decoration: BoxDecoration(color: Colors.white),
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {
                    this.setState(() {
                      values++;
                    });
                  },
                  child: Text('Increment'),
                ),
                SizedBox(
                  width: 50,
                ),
                InkWell(
                  onTap: () {
                    this.setState(() {
                      values--;
                    });
                  },
                  child: Text('decrement'),
                ),
              ],
            ),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                controller: namecontroller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  hintText: 'Enter Your Name',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: emailcontroller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Your Email',
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextFormField(
                controller: numbercontroller,
                decoration: const InputDecoration(
                  border: UnderlineInputBorder(),
                  labelText: 'Enter Your Phone Number',
                ),
              ),
            ),
            ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(80.0),
                ),
                elevation: 0.0,
                padding: const EdgeInsets.all(0.0),
              ),
              child: Ink(
                decoration: BoxDecoration(
                  gradient: const LinearGradient(
                      begin: Alignment.centerRight,
                      end: Alignment.centerLeft,
                      colors: [Colors.redAccent, Colors.pinkAccent]),
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Container(
                  constraints: const BoxConstraints(
                    maxWidth: 300.0,
                    minHeight: 50.0,
                  ),
                  alignment: Alignment.center,
                  child: const Text(
                    "Submit",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 26.0,
                      fontWeight: FontWeight.w300,
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
