import 'package:provider/provider.dart';
import 'package:skripsi_perkembangan/keterangan.dart';
import 'package:skripsi_perkembangan/pembangunan.dart';
import 'package:skripsi_perkembangan/profil.dart';
import 'package:skripsi_perkembangan/propertymu.dart';
import 'package:skripsi_perkembangan/screen1.dart';
import 'package:skripsi_perkembangan/screen2.dart';
import 'package:skripsi_perkembangan/screen3.dart';




import 'blocks/baseBloc.dart';
import 'login.dart';
import 'splashScreen.dart';

class GenProvider {
  static var providers = [
    ChangeNotifierProvider<BaseBloc>.value(value: BaseBloc()),

  ];

  static routes(context) {
    return {
//           '/': (context) {
//        return Base();
//      },

      '/': (context) {
        return SplashScreen();
      },

      'splashScreen': (context) {
        return SplashScreen();
      },

      'login': (context) {
        // return Login();
        return Login();
      },

      'propertymu': (context) {
        // return Login();
        return Propertymu();
      },

      'screen1': (context) {
        return Screen1();
      },

      'screen2': (context) {
        return Screen2();
      },

      'screen3': (context) {
        return Screen3();
      },

      'pembangunan': (context) {
        return Pembangunan();
      },

      'keterangan': (context) {
        return Keterangan();
      },

      'profil': (context) {
        return Profil();
      },
    };
  }
}
