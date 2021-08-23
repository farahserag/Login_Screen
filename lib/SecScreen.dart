import 'package:flutter/material.dart';
import 'package:flutter_application_12/main.dart';

class SceScreen extends StatefulWidget {
  @override
  _SceScreenState createState() => _SceScreenState();
}

class _SceScreenState extends State<SceScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        actions: <Widget>[
          IconButton(
              color: Colors.orangeAccent[400],
              icon: Icon(Icons.arrow_back),
              onPressed: () {
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MyHomePage()));
              })
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          children: [
            // Padding(
            // padding: const EdgeInsets.all(14),
            // child:
            Text(
              'Sign Up',
              style: TextStyle(
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                  color: Colors.orangeAccent[400]),
            ),
            SizedBox(
              height: 25,
            ),

            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: Icon(Icons.person),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                labelText: ' Enter Your Full Name',
                //hintStyle: TextStyle(fontSize: 20)
              ),
            ),
            SizedBox(
              height: 15,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: Icon(Icons.email),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                labelText: ' Enter Your Email',
                //hintStyle: TextStyle(fontSize: 20)
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: Icon(Icons.phone),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                labelText: ' Enter Your Phone number',
                //hintStyle: TextStyle(fontSize: 20)
              ),
            ),
            SizedBox(
              height: 10,
            ),

            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                labelText: 'Set Password',
              ),
            ),
            SizedBox(
              height: 10,
            ),
            TextFormField(
              obscureText: true,
              decoration: InputDecoration(
                fillColor: Colors.grey[100],
                filled: true,
                suffixIcon: Icon(Icons.lock),
                enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.white),
                    borderRadius: BorderRadius.circular(25)),
                labelText: 'Confirm Password',
              ),
            ),
            SizedBox(
              height: 20,
            ),
            Center(
              child: Container(
                height: 50,
                width: 150,
                decoration: BoxDecoration(
                    color: Colors.orangeAccent[400],
                    borderRadius: BorderRadius.circular(20)),
                // ignore: deprecated_member_use
                child: FlatButton(
                    onPressed: () {},
                    child: Container(
                      child: Row(
                        children: [
                          Icon(
                            Icons.check,
                            color: Colors.white,
                            size: 30,
                          ),
                          Spacer(),
                          Text('SIGN UP',
                              style: TextStyle(
                                  fontSize: 20,
                                  color: Colors.white,
                                  fontWeight: FontWeight.bold)),
                        ],
                      ),
                    )),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Text(
                'You can also sign up with',
                style: TextStyle(
                  fontSize: 20,
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Center(
              child: Icon(
                Icons.facebook,
                size: 50,
                color: Colors.blue,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
