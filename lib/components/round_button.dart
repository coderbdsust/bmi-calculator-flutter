import 'package:flutter/material.dart';

class RoundedButton extends StatelessWidget {
  RoundedButton({this.icon, this.onPress});

  final IconData icon;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return RawMaterialButton(
      onPressed: onPress,
      child: Icon(icon),
      shape: CircleBorder(),
      constraints: BoxConstraints.tightFor(
        height: 56.0,
        width: 56.0,
      ),
      fillColor: Color(0xFF4C4F5E),
    );
  }
}
