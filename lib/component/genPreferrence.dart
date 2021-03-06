import 'package:shared_preferences/shared_preferences.dart';

//TOKEN
Future setPrefferenceToken(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('token', value);
}

Future getPrefferenceToken() async {
  String token;
  SharedPreferences prefs = await SharedPreferences.getInstance();
  if (prefs.getString('token') == null) {
    token = "belumlogin";
  } else {
    token = prefs.getString('token');
  }

  return token;
}

Future setPrefferenceKelas(String value) async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  await prefs.setString('kelas', value);
}

Future getPrefferenceKelas() async {
  String token;
  SharedPreferences prefs = await SharedPreferences.getInstance();

  token = prefs.getString('kelas');

  return token;
}

//DELETE
Future deleteAllPref() async {
  SharedPreferences prefs = await SharedPreferences.getInstance();
  prefs.clear();
}