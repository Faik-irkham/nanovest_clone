import 'dart:ui';
import 'package:flutter/material.dart';

class SaldoCard extends StatelessWidget {
  const SaldoCard({super.key});

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(20), // Penting untuk clip efek blur
      child: BackdropFilter(
        filter: ImageFilter.blur(sigmaX: 2.0, sigmaY: 2.0),
        child: Container(
          padding: const EdgeInsets.all(20),
          decoration: BoxDecoration(
            color: const Color(
              0x33D9D9D9,
            ), // Opacity 20% = 0x33 (hex), warna abu D9D9D9
            borderRadius: BorderRadius.circular(20),
          ),
          child: Column(
            children: [
              Row(
                children: [
                  Text(
                    'Saldo Wallet IDR',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const Spacer(),
                  Row(
                    children: [
                      Image.asset('assets/rupiah.png', width: 20, height: 20),
                      const SizedBox(width: 6),
                      Text(
                        '900.000',
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Divider(color: Colors.white),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButtonWithText(
                    imagePath: 'assets/plus.png',
                    label: 'Home',
                  ),
                  IconButtonWithText(
                    imagePath: 'assets/scan.png',
                    label: 'Scan',
                  ),
                  IconButtonWithText(
                    imagePath: 'assets/send-01.png',
                    label: 'Request',
                  ),
                  IconButtonWithText(
                    imagePath: 'assets/send-02.png',
                    label: 'Transfer',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class IconButtonWithText extends StatelessWidget {
  final String imagePath;
  final String label;

  const IconButtonWithText({
    super.key,
    required this.imagePath,
    required this.label,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CircleAvatar(
          radius: 25,
          backgroundColor: Color(0XFF221F33),
          child: Image.asset(imagePath, width: 24, height: 24),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: TextStyle(
            color: Colors.white,
            fontSize: 12,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}
