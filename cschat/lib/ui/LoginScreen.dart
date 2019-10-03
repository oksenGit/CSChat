import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
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
                "CSChat",
                style: TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
              ),
              SizedBox(
                height: 90,
              ),
              Form(
                child: Column(
                  children: <Widget>[
                    customTextField("Email"),
                    customTextField("Password", obscure: true),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamedAndRemoveUntil(context, "/SignupScreen", (r)=>false);
                    },
                    child: Text("Create Account"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      Navigator.pushNamedAndRemoveUntil(context, "/HomeScreen", (r)=>false);
                    },
                    child: Icon(Icons.navigate_next),
                    shape: CircleBorder(),
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
