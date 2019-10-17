import 'dart:math';

import 'package:cschat/bloc/AuthEvent.dart';
import 'package:cschat/bloc/AuthState.dart';
import 'package:cschat/bloc/bloc.dart';
import 'package:rxdart/rxdart.dart';

class AuthBloc extends BLoC<AuthEvent>{

  PublishSubject<AuthState> authState = PublishSubject();

  @override
  void dispatch(AuthEvent event) async{
    if(event is LoginClicked){
      loginWithEmail(event.email, event.password);
    }
  }

  Future<String> loginWithEmail(String email, String password) async{
    authState.sink.add(UserLoggedIn());
  }

}