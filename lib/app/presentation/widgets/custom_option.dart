import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class CustomOption extends StatelessWidget {
  final Widget label;
  final bool selected;
  final void Function(bool)? onSelected;
  final bool hasBorder;
  final Color? background;
  final EdgeInsetsGeometry? labelPadding;
  const CustomOption({
    super.key,
    required this.label,
    required this.selected,
    this.onSelected,
    this.hasBorder = true,
    this.labelPadding,
    this.background,
  });

  @override
  Widget build(BuildContext context) {
    final colorScheme = Theme.of(context).colorScheme;
    return FilterChip(
      label: label,
      onSelected: onSelected,
      selected: selected,
      showCheckmark: false,
      labelPadding: labelPadding,
      selectedColor: colorScheme.secondaryContainer,
      backgroundColor: background,
      labelStyle: Config.textTheme.bodyMedium?.copyWith(
        color: selected ? colorScheme.onSecondaryContainer : null,
      ),
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(25),
      ),
      side: BorderSide(
        color: hasBorder ? colorScheme.outline : Colors.transparent,
      ),
    );
  }
}
