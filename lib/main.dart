import 'package:fitness/pages/dashboardpage.dart';
import 'package:fitness/pages/splashPage.dart';
import 'package:fitness/pages/workoutPage.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      theme: ThemeData.dark(),
      debugShowCheckedModeBanner: false,
      routerConfig: appRouter,
    );
  }
}

final GoRouter appRouter = GoRouter(
  routes: [
    GoRoute(path: '/', builder: (context, state) => const Splashpage()),
    GoRoute(path: '/home', builder: (context, state) => const Dashboardpage()),
    GoRoute(path: '/workout', builder: (context, state) => const Workoutpage()),
  ],
);
