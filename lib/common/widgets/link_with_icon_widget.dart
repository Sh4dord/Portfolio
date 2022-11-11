import 'package:flutter/material.dart';

class LinkWithIconWidget extends StatelessWidget {
  const LinkWithIconWidget({
    required this.text,
    required this.icon,
    required this.onPressed,
    Key? key,
  }) : super(key: key);

  final String text;
  final IconData icon;
  final VoidCallback onPressed;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      child: Row(
        children: [
          Icon(icon),
          const SizedBox(width: 4),
          Text(text),
        ],
      ),
    );
  }
}
