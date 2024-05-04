import 'package:flutter/material.dart';
import 'package:proyect_chordnotes/ui/widgets/custom_appbar.dart';
import 'package:proyect_chordnotes/ui/widgets/sidebar.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Profile',
      ),
      drawer: const GlobalSidebar(
        selectedIndex: 2,
      ),
      body: Container(),
    );
    ;
  }
}
