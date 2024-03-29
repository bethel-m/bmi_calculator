import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  const RoundedButton({Key? key, this.icon, required this.onPressed})
      : super(key: key);
  final IconData? icon;
  final Function() onPressed;
  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      elevation: 0.0,
      child: Icon(icon),
      fillColor: Color(0xFF4C4F5E),
      shape: CircleBorder(),
      onPressed: onPressed,
      constraints: const BoxConstraints.tightFor(width: 50.0, height: 50.0),
    );
  }
}
