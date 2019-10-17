abstract class AuthEvent{}

class LoginClicked extends AuthEvent{
  String email;
  String password;
  LoginClicked(this.email,this.password);
}