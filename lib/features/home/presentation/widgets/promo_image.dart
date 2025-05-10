import 'package:flutter/material.dart';

class PromoImage extends StatelessWidget {
  final String imagePath;
  const PromoImage({super.key, required this.imagePath});

  @override
  Widget build(BuildContext context) {
    return Image.asset(imagePath, width: 66, height: 60, fit: BoxFit.cover);
  }
}
