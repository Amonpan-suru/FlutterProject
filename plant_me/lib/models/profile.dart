import 'dart:ffi';

class Profile {
  static late String username;
  static late String email;
  static late String password;

  static void setProFile(String Username, String Email, String Password) {
    username = Username;
    email = Email;
    password = Password;
  }

  static void Clear() {
    username = "";
    email = "";
    password = "";
  }
}
