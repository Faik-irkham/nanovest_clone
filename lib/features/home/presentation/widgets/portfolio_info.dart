import 'package:flutter/material.dart';
import 'portfolio_text_row.dart';

class PortfolioInfo extends StatelessWidget {
  const PortfolioInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        PortfolioTextRow(
          text: 'Total Portfolio',
          iconPath: 'assets/eye.png',
          style: TextStyle(
            fontSize: 20,
            color: Colors.white,
            fontWeight: FontWeight.w600,
          ),
        ),
        SizedBox(height: 8),
        PortfolioTextRow(
          text: 'Rp 100.000.000',
          iconPath: 'assets/chevron-down.png',
          style: TextStyle(
            fontSize: 26,
            color: Colors.white,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }
}
