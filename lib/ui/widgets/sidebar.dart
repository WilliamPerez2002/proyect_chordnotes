import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';
import 'package:get/get.dart';

class GlobalSidebar extends StatefulWidget {
  final int selectedIndex;
  const GlobalSidebar({
    super.key,
    required this.selectedIndex,
  });

  @override
  State<GlobalSidebar> createState() => _GlobalSidebarState();
}

class _GlobalSidebarState extends State<GlobalSidebar> {
  get selectIndex => widget.selectedIndex;
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
            RowSidebar(
              title: "Home",
              icon: Icons.home_outlined,
              isSelected: selectIndex == 0 ? true : false,
              onTap: () => Get.offNamed("/"),
            ),
            RowSidebar(
              title: "Notes",
              icon: Icons.sticky_note_2_outlined,
              isSelected: selectIndex == 1 ? true : false,
              onTap: () => Get.offNamed("/notes"),
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
            RowSidebar(
              title: "Profile",
              icon: Icons.person_outline,
              isSelected: selectIndex == 2 ? true : false,
              onTap: () => Get.offNamed("/profile"),
            ),
            RowSidebar(
              title: "Settings",
              icon: Icons.settings_outlined,
              isSelected: selectIndex == 3 ? true : false,
              onTap: () => Get.toNamed("/settings"),
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
            RowSidebar(
              title: "Logout",
              icon: Icons.logout,
              onTap: () => Get.offNamed("/login"),
              isSelected: false,
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
  final bool isSelected;
  final Function()? onTap;

  const RowSidebar({
    super.key,
    required this.title,
    required this.icon,
    required this.onTap,
    required this.isSelected,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      selected: isSelected,
      //selectedTileColor: Theme.of(context).colorScheme.primary.withOpacity(0.2),
      // shape: RoundedRectangleBorder(
      // borderRadius: BorderRadius.circular(20),
      //),
      title: Text(title,
          style: Theme.of(context).textTheme.bodyLarge!.copyWith(
              color: isSelected
                  ? Theme.of(context).colorScheme.primary
                  : Theme.of(context).colorScheme.onBackground)),
      onTap: onTap,
      leading: Icon(icon),
      iconColor: Theme.of(context).colorScheme.onBackground,
    );
  }
}
