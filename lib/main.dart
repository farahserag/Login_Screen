import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';

import 'package:flutter/material.dart';
import 'package:flutter_application_12/SecScreen.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  FirebaseAuth auth = FirebaseAuth.instance;
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            height: 330,
            // width: 700,
            decoration: BoxDecoration(
                image: DecorationImage(
              image: NetworkImage(
                  'https://dcassetcdn.com/design_img/700330/441657/441657_4337080_700330_image.jpg'),
            )),
          ),
          AppBar(
            elevation: 0,
            backgroundColor: Colors.transparent,
          ),
          Positioned(
            top: 250,
            left: 0,
            right: 0,
            child: Container(
              padding: EdgeInsets.all(30),
              width: double.infinity,
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(60.0),
                    topRight: Radius.circular(60.0),
                  )),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Login',
                    style: TextStyle(
                        fontSize: 35,
                        fontWeight: FontWeight.bold,
                        color: Colors.orangeAccent[400]),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  TextFormField(
                    decoration: InputDecoration(
                      fillColor: Colors.grey[100],
                      filled: true,
                      suffixIcon: Icon(Icons.email),
                      enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(color: Colors.white),
                          borderRadius: BorderRadius.circular(25)),
                      labelText: 'Enter Your Email',
                    ),
                    controller: emailController,
                  ),
                  SizedBox(
                    height: 15,
                  ),
                  SizedBox(
                    height: 15,
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
                      //labelstyle: TextStyle(fontSize: 20)
                    ),
                    controller: passwordController,
                  ),
                  SizedBox(
                    height: 30,
                  ),
                  Container(
                    height: 50,
                    width: 350,
                    decoration: BoxDecoration(
                        color: Colors.orangeAccent[400],
                        borderRadius: BorderRadius.circular(20)),
                    // ignore: deprecated_member_use
                    child: FlatButton(
                        onPressed: () async {
                          try {
                            await auth.signInWithEmailAndPassword(
                                email: emailController.text,
                                password: passwordController.text);
                            Navigator.pushReplacement(context,
                                MaterialPageRoute(builder: (context) {
                              return SceScreen();
                            }));
                          } on FirebaseAuthException catch (e) {
                            if (e.code == 'user-not-found') {
                              print('No user found for that email.');
                            } else if (e.code == 'wrong-password') {
                              print('Wrong password provided for that user.');
                            }
                          }
                        },
                        child: Container(
                          // padding: EdgeInsets.only(top: 3),
                          child: Text(
                            'LOGIN',
                            style: TextStyle(
                                fontSize: 20,
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        )),
                  ),
                  SizedBox(
                    height: 12,
                  ),
                  Row(
                    children: [
                      Text('Dont have an account?',
                          style: TextStyle(
                            fontSize: 20,
                          )),
                      Spacer(),
                      TextButton(
                        child: Text('Sign up',
                            style: TextStyle(
                                fontSize: 20, color: Colors.orangeAccent[400])),
                        onPressed: () {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => SceScreen()));
                        },
                      )
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
