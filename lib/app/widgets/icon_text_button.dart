import 'package:flutter/material.dart';
import 'package:portfolio_4_photographers_template/theme/theme.dart';

class IconTextButton extends StatelessWidget {
  final void Function() onPress;
  final String label;
  final Widget icon;

  const IconTextButton(
      {super.key,
      required this.onPress,
      required this.label,
      required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 4),
      child: TextButton.icon(
        onPressed: onPress,
        style: const ButtonStyle(
          backgroundColor: MaterialStatePropertyAll(naranja),
          iconColor: MaterialStatePropertyAll(amarillo),
          shape: MaterialStatePropertyAll(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.all(
                Radius.circular(8),
              ),
            ),
          ),
        ),
        icon: icon,
        label: Text(
          label,
          style: const TextStyle(
            color: amarillo,
          ),
        ),
      ),
    );
  }
}
