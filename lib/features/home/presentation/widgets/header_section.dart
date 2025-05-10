import 'package:flutter/material.dart';
import 'action_button.dart';
import 'profile_avatar.dart';

class HeaderSection extends StatelessWidget {
  const HeaderSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: const [ProfileAvatar(), ActionButton()],
    );
  }
}
