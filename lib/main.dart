import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:provider_state_management/provider/count_provider.dart';
import 'package:provider_state_management/provider/favourite_provider.dart';
import 'package:provider_state_management/provider/sliderProvider.dart';
import 'package:provider_state_management/screen/count_example.dart';
import 'package:provider/provider.dart';
import 'package:provider_state_management/screen/favourite_screen.dart';
import 'package:provider_state_management/screen/sliderScreen.dart';
void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(statusBarColor: Colors.transparent));
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (_) => CountProvider()),
        ChangeNotifierProvider(create: (_) => SliderProvider()),
        ChangeNotifierProvider(create: (_) => FavouriteScreenProvider()),
      ],
      child: Builder(
        builder: (BuildContext context){
          return MaterialApp(
            debugShowCheckedModeBanner: false,
            theme: ThemeData(
              primarySwatch: Colors.deepPurple,
            ),
            home: FavouriteScreen(),
          );
        }
      ),
    );
  }
}




