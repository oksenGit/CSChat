import 'package:flutter/material.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: Column(
            children: <Widget>[
              SizedBox(height: 80),
              FlutterLogo(
                size: 100,
              ),
              SizedBox(
                height: 16,
              ),
              Text(
                "Signup Now Ew3a tehrab",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    customTextField("Email"),
                    customTextField("Name"),
                    customTextField("Phone"),
                    customTextField("Birthday"),
                    customTextField("Password", obscure: true),
                  ],
                ),
              ),
              SizedBox(height: 16,),
              Row(
                children: <Widget>[
                  Expanded(
                    child: RaisedButton(
                      onPressed: () {
                        Navigator.pushNamedAndRemoveUntil(
                            context, "/HomeScreen", (r) => false);
                      },
                      color: Colors.blue,
                      child: Text(
                        "Join Us",
                        style: TextStyle(
                          color: Colors.white
                        ),
                      ),
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(50),
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget customTextField(String hint, {bool obscure = false}) {
    return TextField(
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: hint,
      ),
    );
  }
}
