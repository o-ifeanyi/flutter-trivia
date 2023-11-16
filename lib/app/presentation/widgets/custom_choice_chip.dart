import 'package:ai_trivia/core/extensions/extentions.dart';
import 'package:ai_trivia/core/utils/config.dart';
import 'package:flutter/material.dart';

class CustomChoiceChip<T> extends FormField<Iterable<T>> {
  final String header;
  final T? choice;
  final Iterable<T> choices;
  final Function(T) onSelected;
  CustomChoiceChip({
    super.key,
    required this.header,
    required this.choice,
    required this.choices,
    required this.onSelected,
  }) : super(
          validator: (value) {
            return (value ?? choices).contains(choice)
                ? null
                : '$header is required';
          },
          builder: (state) {
            final list = state.value ?? choices;
            final theme = Theme.of(state.context);

            return Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  header,
                  style: Config.textTheme.bodyLarge
                      ?.copyWith(fontWeight: FontWeight.w600),
                ),
                Config.vGap10,
                Wrap(
                  runSpacing: Config.isWeb ? Config.y(10) : 0,
                  spacing: Config.x(10),
                  children: list
                      .map(
                        (e) => ChoiceChip(
                          label: Text(e.toString()),
                          selected: choice == e,
                          onSelected: (selected) => onSelected(e),
                          shape: RoundedRectangleBorder(
                            borderRadius: BorderRadius.circular(25),
                          ),
                        ),
                      )
                      .toList(),
                ),
                if (state.hasError) ...[
                  const SizedBox(height: 4),
                  Padding(
                    padding: const EdgeInsets.only(left: 12),
                    child: Text(
                      state.errorText ?? 'This field is required',
                      style: theme.textTheme.labelMedium
                          ?.copyWith(color: theme.colorScheme.error),
                    ),
                  )
                ]
              ],
            );
          },
        );

  @override
  FormFieldState<Iterable<T>> createState() => _CustomChoiceChipState();
}

class _CustomChoiceChipState<T> extends FormFieldState<Iterable<T>> {
  @override
  CustomChoiceChip<T> get widget => super.widget as CustomChoiceChip<T>;

  @override
  void restoreState(RestorationBucket? oldBucket, bool initialRestore) {
    super.restoreState(oldBucket, initialRestore);
    if (widget.choice != null && !widget.choices.contains(widget.choice)) {
      final newList = List<T>.from(widget.choices);
      newList.insert(newList.lastIndex, widget.choice!);
      setValue(newList);
    }
  }
}
