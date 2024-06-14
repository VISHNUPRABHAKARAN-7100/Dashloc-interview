import 'package:dashloc_interview/splash/view/splash.dart';
import 'package:dashloc_interview/util/constant_colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MediaQuery(
      data: MediaQuery.of(context).copyWith(
        textScaler: const TextScaler.linear(1),
      ),
      child: MaterialApp(
        theme: ThemeData(
          scaffoldBackgroundColor: Colors.white,
          primarySwatch: MaterialColor(
            ConstantColors.primaryColor.value,
            const <int, Color>{
              50: Color(0xFFE0E7FF),
              100: Color(0xFFC7D3FF),
              200: Color(0xFFA9BEFF),
              300: Color(0xFF8BA0FF),
              400: Color(0xFF6D82FF),
              500: Color(0xFF3558CD),
              600: Color(0xFF1C34A3),
              700: Color(0xFF00107A),
              800: Color(0xFF000756),
              900: Color(0xFF000333),
            },
          ),
          useMaterial3: false,
        ),
        debugShowCheckedModeBanner: false,
        home: const Splash(),
      ),
    );
  }
}
