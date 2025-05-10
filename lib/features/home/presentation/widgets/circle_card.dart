import 'dart:ui';
import 'package:flutter/material.dart';

class BlurredCircleWithWhiteGradientBorder extends StatelessWidget {
  final double size;
  final Alignment alignment;
  final Color bgColor;
  // chid
  final Widget child;
  const BlurredCircleWithWhiteGradientBorder({
    super.key,
    this.size = 170,
    this.bgColor = const Color(0XFF0E68B4),
    required this.alignment,
    this.child = const SizedBox(),
  });

  @override
  Widget build(BuildContext context) {
    const double borderWidth = 2;

    return Stack(
      alignment: alignment,
      children: [
        // Border dengan gradient putih
        ClipOval(
          child: Container(
            width: size - 50,
            height: size - 50,
            decoration: BoxDecoration(shape: BoxShape.circle, color: bgColor),
          ),
        ),

        // Blur effect dengan BackdropFilter di dalam lingkaran
        ClipOval(
          child: BackdropFilter(
            filter: ImageFilter.blur(sigmaX: 2, sigmaY: 2),
            child: Container(
              width: size,
              height: size,
              decoration: BoxDecoration(
                border: Border.all(
                  color: const Color.fromARGB(60, 255, 255, 255),
                  width: borderWidth,
                ),
                shape: BoxShape.circle,
                color: Color.fromARGB(65, 217, 217, 217),
              ),
              child: child,
            ),
          ),
        ),
      ],
    );
  }
}
