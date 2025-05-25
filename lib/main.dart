import 'package:flutter/material.dart';
import 'package:flutter_web_plugins/flutter_web_plugins.dart';

// ────────────── screens ──────────────
import 'package:flutter_application_1/welcome_screen.dart';
import 'package:flutter_application_1/login_screen.dart';
import 'package:flutter_application_1/signup_screen.dart';
import 'package:flutter_application_1/edit_profile_page.dart';
import 'package:flutter_application_1/main_layout.dart';
import 'package:flutter_application_1/coworking_home.dart';
import 'package:flutter_application_1/listoftables.dart';
import 'package:flutter_application_1/chatScreen.dart';
import 'package:flutter_application_1/FloorSVG.dart';
import 'package:flutter_application_1/room_details_screen.dart';
import 'package:flutter_application_1/OfficeRoom_details_screen.dart';
import 'package:flutter_application_1/officeRoomList.dart';
import 'package:flutter_application_1/profile_screen.dart';
import 'package:flutter_application_1/success_payment_page.dart';
// import 'package:flutter_application_1/fail_payment_page.dart'; // make sure this exists

// ────────────── global navigator key ──────────────
//
// Any widget can import it with:
//   import 'package:flutter_application_1/main.dart' show navigatorKey;
//
final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

void main() {
  // Hash-style URLs let Konnect redirect to  #/success  or  #/fail
  setUrlStrategy(const HashUrlStrategy());
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // Routes that never need extra arguments
  static final Map<String, WidgetBuilder> _staticRoutes = {
    '/':                 (_) => const WelcomeScreen(),
    '/login':            (_) => const LoginScreen(),
    '/signup':           (_) => SignupScreen(),
    '/edit':             (_) => const EditProfilePage(),
    '/home':             (_) => MainLayout(child: const CoworkingApp(), currentIndex: 0),
    '/reserveMeetingRoom': (_) => const CategoryRoomList(),
    '/assistant':        (_) => const ChatScreen(),
    '/openspace':        (_) => const FloorPlanBookingPage(),
    '/profile':          (_) => MainLayout(child: const ProfileScreen(), currentIndex: 3),
  };

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      navigatorKey: navigatorKey,
      title: 'abda.',
      theme: ThemeData(fontFamily: 'Poppins'),
      initialRoute: '/',

      // Pure static routes:
      routes: _staticRoutes,

      // Anything with query-params, or unmatched above:
      onGenerateRoute: (RouteSettings settings) {
        final uri = Uri.parse(settings.name ?? '');

        // 1️⃣ Success redirect:  /#/success?payment_ref=xyz&subId=...&start_date=...&end_date=...
        if (uri.path == '/success') {
          final ref       = uri.queryParameters['payment_ref'];
          final subId     = uri.queryParameters['subId'];
          final startDate = uri.queryParameters['start_date'];
          final endDate   = uri.queryParameters['end_date'];

          return MaterialPageRoute(
            builder: (_) => SuccessPaymentPage(
              paymentRef: ref,
              subId: subId,
              startDate: startDate,
              endDate: endDate,
            ),
            settings: settings,
          );
        }

        // 2️⃣ Failure redirect:  /#/fail
        // if (uri.path == '/fail') {
        //   return MaterialPageRoute(
        //     builder: (_) => const FailPaymentPage(),
        //     settings: settings,
        //   );
        // }

        // 3️⃣ One of the static routes?
        final builder = _staticRoutes[uri.path];
        if (builder != null) {
          return MaterialPageRoute(builder: builder, settings: settings);
        }

        // 4️⃣ Fallback "not found"
        return MaterialPageRoute(
          builder: (_) => const Scaffold(
            body: Center(child: Text('Route not found')),
          ),
          settings: settings,
        );
      },
    );
  }
}
