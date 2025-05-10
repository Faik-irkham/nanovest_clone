import 'package:flutter/material.dart';

class OverviewSection extends StatelessWidget {
  const OverviewSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 30),
        Row(
          children: [
            Text(
              'Overview',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w600,
                color: Colors.white,
              ),
            ),
            Spacer(),
            Row(
              children: [
                Text(
                  'Bulanan',
                  style: TextStyle(fontSize: 12, color: Color(0XFF7D8D9D)),
                ),
                Image.asset('assets/chevron-down.png', width: 18, height: 18),
              ],
            ),
          ],
        ),
        SizedBox(height: 10),
        Container(
          padding: EdgeInsets.symmetric(horizontal: 10, vertical: 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/arrow-down-left.png',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Penghasilan',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '+Rp20.000.000',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
              Column(
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/arrow-up-right.png',
                        width: 18,
                        height: 18,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Pengeluaran',
                        style: TextStyle(fontSize: 12, color: Colors.white),
                      ),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '-Rp19.100.000',
                    style: TextStyle(fontSize: 16, color: Colors.white),
                  ),
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
