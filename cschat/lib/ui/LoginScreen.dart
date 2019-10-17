import 'package:cschat/bloc/AuthBloc.dart';
import 'package:cschat/bloc/AuthEvent.dart';
import 'package:cschat/bloc/AuthState.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  TextEditingController _emailC = TextEditingController();

  TextEditingController _passC = TextEditingController();

  AuthBloc _authBloc = AuthBloc();


  @override
  void initState() {
    _authBloc.authState.listen((AuthState state){
      if(state is UserLoggedIn){
        Navigator.pushNamedAndRemoveUntil(context, "/HomeScreen", (r)=>false);
      }
    });
    super.initState();
  }

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
                    customTextField("Email", _emailC),
                    customTextField("Password", _passC,obscure: true),
                  ],
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: <Widget>[
                  FlatButton(
                    onPressed: () {
                      Navigator.pushNamed(context, "/SignupScreen");
                    },
                    child: Text("Create Account"),
                  ),
                  RaisedButton(
                    onPressed: (){
                      _authBloc.dispatch(LoginClicked(_emailC.text,_passC.text));
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

  Widget customTextField(String hint, TextEditingController controller, {bool obscure = false}) {
    return TextField(
    controller: controller,
      obscureText: obscure,
      decoration: InputDecoration(
        labelText: hint,
      ),
    );
  }
}
