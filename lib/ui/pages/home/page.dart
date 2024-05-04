import 'package:flutter/material.dart';
import 'package:proyect_chordnotes/ui/widgets/custom_appbar.dart';
import 'package:proyect_chordnotes/ui/widgets/sidebar.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Home',
      ),
      drawer: const GlobalSidebar(
        selectedIndex: 0,
      ),
      body: Container(),
    );
  }
}
