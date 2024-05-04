import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:proyect_chordnotes/ui/widgets/custom_appbar.dart';
import 'package:proyect_chordnotes/ui/widgets/sidebar.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppbar(
        title: 'Settings',
      ),
      drawer: const GlobalSidebar(
        selectedIndex: 3,
      ),
      body: Container(
        child: Center(
          child: Switch(
              value: isSwitched,
              thumbIcon: MaterialStateProperty.resolveWith<Icon?>(
                (states) {
                  if (isSwitched) {
                    return const Icon(Icons.nightlight_round);
                  } else {
                    return const Icon(Icons.wb_sunny);
                  }
                },
              ),
              onChanged: (value) => {
                    setState(() {
                      isSwitched = value;
                      Get.changeThemeMode(
                          isSwitched ? ThemeMode.dark : ThemeMode.light);
                    })
                  }),
        ),
      ),
    );
    ;
  }
}
