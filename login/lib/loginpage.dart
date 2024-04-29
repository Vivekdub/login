import 'package:flutter/material.dart';
import 'package:url_launcher/url_launcher.dart';


class LoginPage extends StatefulWidget {
  @override
  _LoginPageState createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  TextEditingController _usernameController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Container(
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage("C:/flutterapps/Login/login/assets/imageback.png"), // Replace with your image asset
            fit: BoxFit.cover,
          ),
        ),
        child:Padding(
        padding: EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[  
           const Text('Login',
            style: TextStyle(
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
                fontFamily: AutofillHints.newPassword,
                color: Color.fromARGB(255, 147, 228, 93)
              )
              ),
           const SizedBox(height: 40.0),
            
           const Text('Welcome to App!',
            style: TextStyle(
                fontSize: 18.0,
                fontFamily: AutofillHints.newPassword,
                color: Color.fromARGB(255, 147, 228, 93)
              )
              ),
            
            const  SizedBox(height: 20.0),
            
            TextField(
              controller: _usernameController,
              decoration: InputDecoration(
                labelText: 'Email',
                 border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0))
              ),
            ),
            const SizedBox(height: 20.0),
            TextField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password',
                border: OutlineInputBorder(
                 borderRadius: BorderRadius.circular(10.0))
              ),
              obscureText: true,
            ),

            const SizedBox(height: 20.0),

            SizedBox(
            width:200.0,
            child: ElevatedButton(
            
              onPressed: () {
                // Login functionality can be added here
                String username = _usernameController.text;
                String password = _passwordController.text;

                // For now, just print the username and password
                print('Username: $username');
                print('Password: $password');
              },
              style: ElevatedButton.styleFrom(
              backgroundColor:Color.fromARGB(255, 147, 228, 93), // Set background color to green
              ),
              child: const Text('Login',style: TextStyle(
                    color: Colors.white, 
                    fontWeight: FontWeight.bold// Set text color to white
               ),
          ),
            ),
            ),
           const SizedBox(height: 20.0),
            // Divider
        Row(
  mainAxisAlignment: MainAxisAlignment.center,
  children: <Widget>[
    Container(
      height: 1.0, // Height of the line
      width: 100.0, // Width of the line
      color: Colors.black, // Color of the line
    ),
    const SizedBox(width: 10.0), // Adjust spacing as needed
    const Text('Or'),
    const SizedBox(width: 10.0), // Adjust spacing as needed
    Container(
      height: 1.0, // Height of the line
      width: 100.0, // Width of the line
      color: Colors.black, // Color of the line
    ),
  ],
),

            
            const SizedBox(height: 20.0),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                GestureDetector(
                onTap: () {
                  launch('https://accounts.google.com/signin');
                  print('hiiii');
                           },
                child:Image.asset(
                  'C:/flutterapps/Login/login/assets/Googlelogo.png', // Replace with your Google logo image path
                  height: 50.0, // Adjust height as needed
                    width: 50.0,
                ),
                ),
                const SizedBox(width: 30.0),
                GestureDetector(
                   onTap: () {
                  launch('https://www.facebook.com/login.php');
                  //print('hiiii1');
                           },
                child:Image.asset(
                  'C:/flutterapps/Login/login/assets/face.png', // Replace with your Apple logo image path
                  height: 50.0, // Adjust height as needed
                  width: 50.0,
                ),
                ),
                const SizedBox(width: 30.0),
                GestureDetector(
                   onTap: () {
                  launch('https://appleid.apple.com/');
                  print('hiiii2');
                           },
                child:Image.asset(
                  'C:/flutterapps/Login/login/assets/apple.png', // Replace with your Apple logo image path
                  height: 50.0, // Adjust height as needed
                  width: 50.0,
                ),
                ),
              ],

            )
          ],
        ),
      ),
    )
    );
  }
}
