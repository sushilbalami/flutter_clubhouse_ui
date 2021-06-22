import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final IconButton leading;
  final List<Widget> actions;
  final String title;
  CustomAppBar(
      {required this.leading, required this.actions, required this.title});
  @override
  Size get preferredSize => const Size.fromHeight(51);

  @override
  Widget build(BuildContext context) {
    return AppBar(leading: leading, actions: actions, title: Text(title));
  }
}
