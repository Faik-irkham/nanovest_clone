import 'package:flutter/material.dart';

import '../widgets/header_section.dart';
import '../widgets/overview_section.dart';
import '../widgets/portfolio_section.dart';
import '../widgets/saldo_card.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        decoration: const BoxDecoration(
          gradient: RadialGradient(
            center: Alignment(0.9, 0.2),
            radius: 0.8,
            colors: [Color(0xCC0E68B4), Color(0XFF151128)],
            stops: [0.0, 1.0],
          ),
        ),
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Column(
              children: [
                HeaderSection(),
                PortfolioSection(),
                SaldoCard(),
                OverviewSection(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
