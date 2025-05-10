import 'package:flutter/material.dart';
import 'circle_card.dart';
import 'portfolio_info.dart';
import 'promo_image.dart';

class PortfolioSection extends StatelessWidget {
  const PortfolioSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(height: 10),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Expanded(child: PortfolioInfo()),
            PromoImage(imagePath: 'assets/promo_home.png'),
          ],
        ),
        SizedBox(
          height: MediaQuery.of(context).size.height / 3.6,
          child: Stack(
            clipBehavior: Clip.none,
            children: [
              // BlurredCircleWithWhiteGradientBorder pertama
              Positioned(
                top: 50,
                left: 20,
                child: BlurredCircleWithWhiteGradientBorder(
                  alignment: Alignment(-1.3, -0.4),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/crypto-icon.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Crypto',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp50M',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              // BlurredCircleWithWhiteGradientBorder kedua, yang akan berada di atas
              Positioned(
                top: 30,
                left: 166,
                child: BlurredCircleWithWhiteGradientBorder(
                  size: 200,
                  alignment: Alignment(0, 1.2),
                  bgColor: Color(0XFF443462),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        'assets/bar-chart.png',
                        width: 30,
                        height: 30,
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Non-Crypto',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 18,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Text(
                        'Rp50M',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 24,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
