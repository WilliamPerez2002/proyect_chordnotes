import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:proyect_chordnotes/ui/pages/account/login_page.dart';
import 'package:proyect_chordnotes/ui/pages/account/register_page.dart';
import 'package:proyect_chordnotes/ui/pages/home/page.dart';
import 'package:proyect_chordnotes/ui/pages/notes/page.dart';
import 'package:proyect_chordnotes/ui/pages/profile/page.dart';
import 'package:proyect_chordnotes/ui/pages/settings/page.dart';

class GlobalRouteGet {
  static const initialRoute = '/';

  static final List<GetPage> routes = [
    GetPage(
        name: '/', page: () => const HomePage(), transition: Transition.fadeIn),
    GetPage(
        name: '/notes',
        page: () => const NotesPage(),
        transition: Transition.fadeIn),
    GetPage(
        name: '/profile',
        page: () => const ProfilePage(),
        transition: Transition.fadeIn),
    GetPage(
        name: '/settings',
        page: () => const SettingsPage(),
        transition: Transition.fadeIn),
    GetPage(
      name: '/login',
      page: () => const LoginPage(),
      transition: Transition.fadeIn,
    ),
    GetPage(
      name: '/register',
      page: () => const RegisterPage(),
      transition: Transition.fadeIn,
    ),
  ];
}
