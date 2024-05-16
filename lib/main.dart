import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Login Page',
      debugShowCheckedModeBanner: false,
      home: LoginPage(),
    );
  }
}

class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  // Add function to handle button press
  void _login() {
    // Add your logic here to handle login
    print('Login button pressed');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(), // Add the app bar here
      body: SafeArea(
        child: ListView(
          padding: EdgeInsets.only(top: 95.0, left: 34.0, right: 34.0),
          
          children: <Widget>[
            Row(
              children: <Widget>[
                SizedBox(height: 200,), // Add space at the top
                Image.asset('assets/logo.png'), // Display app logo
                SizedBox(height: 200,),
                Text('Flutter', style: TextStyle(fontSize: 65, fontWeight: FontWeight.w100),)
              ],
            ),
            SizedBox(height: 60.0,),
            TextField(
              decoration: InputDecoration(
                labelText: "Email",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
            ),
            SizedBox(height: 20.0,),
             TextField(
              obscureText: true,
              decoration: InputDecoration(
                labelText: "Password",
                labelStyle: TextStyle(fontSize: 20),
                filled: true,
              ),
             ),
             SizedBox(height: 20,),
             Column(
              children: <Widget>[
                Text('Forgot Password',
                style: TextStyle(color: Colors.blue, fontWeight: FontWeight.w800, fontSize: 15),),
                ButtonTheme(
                  height: 100,
                
                  child: ElevatedButton(
                    onPressed:null,
                    child: Text(
             
                      'Login',
                      style: TextStyle(color: Colors.white), // Change text color to white
                    ),
                    style: ElevatedButton.styleFrom(
                   backgroundColor: Colors.blue,
                      padding: EdgeInsets.all(20), // Increase button padding
                    ),
                  ),
                ),
                SizedBox(height: 20,),
                Text('New user? Create Account')
              ],
             )
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() { // Define the AppBar widget here
    return AppBar(
      title: const Text(
        'Login Page',
        style: TextStyle(
          fontSize: 25,
          color: Colors.white,
          fontWeight: FontWeight.w600,
        ),
      ),
      backgroundColor: Colors.blue,
    );
  }
}
