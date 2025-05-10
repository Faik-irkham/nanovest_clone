import 'package:flutter/material.dart';

class ActionButton extends StatelessWidget {
  const ActionButton({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(20),
            gradient: const LinearGradient(
              colors: [Color(0xFF1F172E), Color(0xFF2B2142)],
            ),
          ),
          child: Row(
            children: const [
              CircleAvatar(
                backgroundColor: Colors.white,
                radius: 10,
                child: ClipOval(
                  child: Image(
                    image: AssetImage('assets/NBTStaking.png'),
                    width: 20,
                    height: 20,
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              SizedBox(width: 4),
              Text(
                'Stake NBT',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ],
          ),
        ),
        SizedBox(width: 12),
        _iconButton(asset: 'assets/search.png'),
        SizedBox(width: 12),
        _iconButton(asset: 'assets/notif.png'),
      ],
    );
  }

  Widget _iconButton({required String asset}) {
    return ClipOval(
      child: Image.asset(asset, width: 20, height: 20, fit: BoxFit.cover),
    );
  }
}
