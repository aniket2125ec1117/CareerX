import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:job_portal/screens/starting.dart';


void main() {
  runApp(ProviderScope(child: MainPage()));
}

ColorScheme kColorSchema = ColorScheme.fromSeed(
  seedColor: Colors.white,
  onPrimary: const Color.fromARGB(127, 0, 17, 255),
  onSecondary: const Color.fromARGB(255, 0, 3, 180),
);

TextTheme kTextTheme = const TextTheme(labelMedium: TextStyle(
  color: Color.fromARGB(255, 27, 63, 184),
  fontWeight: FontWeight.bold
));

class MainPage extends StatelessWidget {
  const MainPage({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Job Portal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        textTheme: kTextTheme,
        colorScheme: kColorSchema
      ),
      home: Starting(),
    );
  }
}
