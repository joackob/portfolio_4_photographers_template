import 'package:flutter/material.dart';
import 'package:portfolio_4_photographers_template/theme/theme.dart';

class IconButtonSearch extends StatelessWidget {
  final void Function() onPress;
  const IconButtonSearch({super.key, required this.onPress});

  @override
  Widget build(BuildContext context) {
    return IconButton.filled(
      onPressed: onPress,
      icon: const Icon(Icons.search),
      style: const ButtonStyle(
        backgroundColor: MaterialStatePropertyAll(naranja),
        iconColor: MaterialStatePropertyAll(amarillo),
        shape: MaterialStatePropertyAll(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.all(
              Radius.circular(8.0),
            ),
          ),
        ),
      ),
    );
  }
}
