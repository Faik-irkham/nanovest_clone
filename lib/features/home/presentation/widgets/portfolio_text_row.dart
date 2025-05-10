import 'package:flutter/material.dart';

class PortfolioTextRow extends StatelessWidget {
  final String text;
  final String iconPath;
  final TextStyle style;
  const PortfolioTextRow({
    super.key,
    required this.text,
    required this.iconPath,
    required this.style,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Flexible(
          child: Text(text, style: style, overflow: TextOverflow.ellipsis),
        ),
        const SizedBox(width: 10),
        ClipOval(
          child: Image.asset(
            iconPath,
            width: 20,
            height: 20,
            fit: BoxFit.cover,
          ),
        ),
      ],
    );
  }
}
