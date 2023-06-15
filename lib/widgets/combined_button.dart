import 'package:flutter/material.dart';

class CombinedButton extends StatelessWidget {
  final String text;
  final IconData icon;
  final VoidCallback? onPressed;
  final double? padding;

  const CombinedButton({
    super.key,
    required this.text,
    required this.icon,
    required this.onPressed,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(icon),
          Padding(padding: EdgeInsets.symmetric(horizontal: padding ?? 4)),
          Text(text),
        ],
      ),
    );
  }
}
