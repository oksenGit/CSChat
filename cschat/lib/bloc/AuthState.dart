abstract class AuthState{}

class UserLoggedIn extends AuthState{}

class LoginFailed extends AuthState{
  String reason;
}