import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/presentation/featured_services.dart';

//void main () is the starting point of all the flutter apps.
void main() {
  //runApp() is a function that takes a widget and makes it the root of the widget tree.
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Featured Services',
      scrollBehavior: AppScrollBehavior(),
      debugShowCheckedModeBanner: false,
      home: const FeaturedServicesWidget(),
    );
  }
}

//ScrollBehavior is a class that is used to customize the scroll behavior of the app.
class AppScrollBehavior extends MaterialScrollBehavior {
  @override
  Set<PointerDeviceKind> get dragDevices => {
        PointerDeviceKind.touch,
        PointerDeviceKind.mouse,
        PointerDeviceKind.stylus,
      };
}
