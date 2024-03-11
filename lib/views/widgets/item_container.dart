import 'package:cuaca_app/utils/font.dart';
import 'package:flutter/material.dart';

class ItemContainer extends StatelessWidget {
  final String title;
  final String subtitle;

  const ItemContainer({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    FontSize fontSize = FontSize(context);

    return IntrinsicWidth(
      child: Container(
        padding: const EdgeInsets.only(left: 20, right: 20),
        decoration: BoxDecoration(
          color: Theme.of(context).colorScheme.surface,
          borderRadius: BorderRadius.circular(10),
        ),
        alignment: Alignment.center,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              title,
              style: TextStyle(
                fontSize: fontSize.subtitle1,
                fontWeight: FontWeight.normal,
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
            Text(
              subtitle,
              style: TextStyle(
                fontSize: fontSize.h4,
                fontWeight: FontWeight.bold,
                color: Theme.of(context).colorScheme.primary,
              ),
              textAlign: TextAlign.center,
            ),
          ],
        ),
      ),
    );
  }
}
