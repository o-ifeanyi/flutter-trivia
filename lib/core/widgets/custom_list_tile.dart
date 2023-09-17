import 'package:ai_trivia/core/utils/app_icons.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class CustomListTile extends StatelessWidget {
  const CustomListTile({
    Key? key,
    required this.iconData,
    required this.title,
    required this.onPressed,
    this.hasTrailing = true,
    this.highlightColor,
  }) : super(key: key);

  final IconData iconData;
  final String title;
  final Color? highlightColor;
  final void Function()? onPressed;
  final bool hasTrailing;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      contentPadding: const EdgeInsets.all(0),
      onTap: onPressed,
      leading: Icon(iconData, color: highlightColor),
      title: Text(
        title,
        style: Config.textTheme.bodyLarge?.copyWith(color: highlightColor),
      ),
      trailing: hasTrailing
          ? Icon(
              AppIcons.arrowForwardIos,
              color: highlightColor,
            )
          : null,
    );
  }
}
