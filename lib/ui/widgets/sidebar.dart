import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_animate/flutter_animate.dart';

class GlobalSidebar extends StatefulWidget {
  const GlobalSidebar({
    super.key,
  });

  @override
  State<GlobalSidebar> createState() => _GlobalSidebarState();
}

class _GlobalSidebarState extends State<GlobalSidebar> {
  @override
  Widget build(BuildContext context) {
    return Animate(
      effects: const [
        FadeEffect(),
      ],
      child: Drawer(
        elevation: 0,
        backgroundColor: Theme.of(context).colorScheme.background,
        child: Column(
          children: <Widget>[
            UserAccountsDrawerHeader(
                accountName: Text(
                  'William Perez',
                  style: Theme.of(context)
                      .textTheme
                      .labelLarge!
                      .copyWith(color: Colors.white),
                ),
                accountEmail: Text('william@gmail.com',
                    style: Theme.of(context).textTheme.labelSmall!.copyWith(
                          color: Colors.white,
                        )),
                currentAccountPicture: CircleAvatar(
                    backgroundColor: Theme.of(context).colorScheme.primary,
                    child: Text(
                      'W',
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          color: Colors.white, fontWeight: FontWeight.bold),
                    )),
                decoration: BoxDecoration(
                    color: Theme.of(context).colorScheme.background,
                    image: const DecorationImage(
                      image: AssetImage('assets/sidebar.jpg'),
                      fit: BoxFit.cover,
                    ))),
            const SizedBox(
              height: 20,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('BROWSE',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.surface)),
              ),
            ),
            const RowSidebar(
              title: "Home",
              icon: Icons.home_outlined,
            ),
            const RowSidebar(
              title: "Notes",
              icon: Icons.sticky_note_2_outlined,
            ),
            const SizedBox(
              height: 90,
            ),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Text('CONFIGURATION',
                    style: Theme.of(context).textTheme.titleMedium!.copyWith(
                        color: Theme.of(context).colorScheme.surface)),
              ),
            ),
            const RowSidebar(
              title: "Profile",
              icon: Icons.person_outline,
            ),
            const RowSidebar(
              title: "Settings",
              icon: Icons.settings_outlined,
            ),
            const SizedBox(
              height: 20,
            ),
            Expanded(child: Container()),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: Divider(
                    color: Theme.of(context).colorScheme.surface, height: 1)),
            const SizedBox(
              height: 1,
            ),
            const RowSidebar(
              title: "Logout",
              icon: Icons.logout,
            ),
            const SizedBox(
              height: 20,
            ),
          ],
        ),
      ),
    );
  }
}

class RowSidebar extends StatelessWidget {
  final String title;
  final IconData icon;

  const RowSidebar({
    super.key,
    required this.title,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title, style: Theme.of(context).textTheme.bodyLarge),
      onTap: () {},
      leading: Icon(icon),
      iconColor: Theme.of(context).colorScheme.onBackground,
    );
  }
}
