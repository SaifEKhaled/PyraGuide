import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'LoginPage.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  bool _obscureText = true;
  bool _agreeToReceiveInfo = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'Sign Up',
          style: TextStyle(
            fontFamily: 'Inter',
            fontSize: 24,
            color: Color(0xFFDAA520),
          ),
        ),
        centerTitle: true, // Center the title
      ),
      body: Align(
        alignment: Alignment.topCenter,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextField(
                decoration: InputDecoration(labelText: 'Name'),
              ),
              TextField(
                decoration: InputDecoration(labelText: 'Email'),
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      obscureText: _obscureText,
                      decoration: InputDecoration(labelText: 'Password'),
                    ),
                  ),
                  IconButton(
                    onPressed: () {
                      setState(() {
                        _obscureText = !_obscureText;
                      });
                    },
                    icon: Icon(_obscureText ? Icons.visibility : Icons.visibility_off),
                  ),
                ],
              ),
              CheckboxListTile(
                title: Text('I would like to receive your newsletter and other important information'),
                value: _agreeToReceiveInfo,
                onChanged: (newValue) {
                  setState(() {
                    _agreeToReceiveInfo = newValue!;
                  });
                },
                
              ),
              ElevatedButton(
                onPressed: _agreeToReceiveInfo
                    ? () {
                        // Handle sign-up logic here
                      }
                    : null,
                child: Text(
                  'Sign Up',
                  style: TextStyle(
                    fontFamily: 'Inter',
                    fontSize: 24,
                    color: Color(0xFFDAA520),
                  ),
                ),
              ),
              SizedBox(height: 16),
              TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    CupertinoPageRoute(
                      builder: (context) => LoginPage(),
                      settings: RouteSettings(
                        name: 'LoginPage', 
                      ),
                    ),
                  );
                },
                child: Text('Already have an account? Log In'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
