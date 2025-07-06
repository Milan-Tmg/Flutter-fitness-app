import "package:flutter/material.dart";
import "package:flutter_fitness_app/theme/app_theme.dart";
class UserInfo extends StatelessWidget {
  UserInfo({super.key, required this.info_name, required this.info_value});
  String info_name;
  String info_value;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(info_name, style: textTheme.displayMedium),
      trailing: Text(info_value, style: TextStyle(fontSize: 18)),
    );
  }
}
