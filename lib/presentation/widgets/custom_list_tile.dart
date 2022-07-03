import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  final String title;
  final IconData iconData;

  const CustomListTile(this.title, this.iconData, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(title),
      leading: Icon(iconData),
      onTap: () {
        // Update the state of the app.
        // ...
      },
    );
  }
}
