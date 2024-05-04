import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final List<Widget>? actions;
  const CustomAppbar({
    super.key,
    required this.title,
    this.actions,
  });

  @override
  Size get preferredSize => const Size.fromHeight(50);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Theme.of(context).colorScheme.background,
      title: Text(
        title,
        style: Theme.of(context).textTheme.titleLarge,
      ),
      centerTitle: true,
      iconTheme:
          IconThemeData(color: Theme.of(context).colorScheme.onBackground),
      actions: actions,
      shadowColor: Theme.of(context).colorScheme.onBackground,
    );
  }
}
