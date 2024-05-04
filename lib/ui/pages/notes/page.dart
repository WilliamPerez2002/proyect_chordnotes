import 'package:flutter/material.dart';
import 'package:proyect_chordnotes/ui/widgets/custom_appbar.dart';
import 'package:proyect_chordnotes/ui/widgets/sidebar.dart';

class NotesPage extends StatefulWidget {
  const NotesPage({super.key});

  @override
  State<NotesPage> createState() => _NotesPageState();
}

class _NotesPageState extends State<NotesPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Notes',
      ),
      drawer: const GlobalSidebar(
        selectedIndex: 1,
      ),
      body: Container(),
    );
    ;
  }
}
