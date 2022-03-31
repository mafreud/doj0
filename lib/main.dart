import 'package:code_dojo/app/dashboard/dashboard_page.dart';
import 'package:code_dojo/app/description/description_page.dart';
import 'package:code_dojo/app/top/top_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';

void main() {
  runApp(ProviderScope(child: MyApp()));
}

class MyApp extends StatelessWidget {
  MyApp({Key? key}) : super(key: key);

  final _router = GoRouter(
    routes: [
      GoRoute(
        path: '/',
        builder: (context, state) => const TopPage(),
      ),
      GoRoute(
        path: '/dashboard',
        builder: (context, state) => const DashboardPage(),
      ),
      GoRoute(
        path: '/description',
        builder: (context, state) => const DescriptionPage(),
      )
    ],
    // TODO(someone): add Error page
    // errorBuilder: (context, state) => ErrorScreen(state.error),
  );

  @override
  Widget build(BuildContext context) => MaterialApp.router(
      theme: ThemeData(
        brightness: Brightness.dark,
        textTheme: GoogleFonts.notoSansTextTheme(
          Theme.of(context)
              .textTheme, // If this is not set, then ThemeData.light().textTheme is used.
        ),
      ),
      routeInformationParser: _router.routeInformationParser,
      routerDelegate: _router.routerDelegate,
      debugShowCheckedModeBanner: false);
}
