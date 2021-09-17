import 'package:flutter/material.dart';

class CircleButtons extends StatelessWidget {
  //const ({ Key? key }) : super(key: key);
  final IconData icon;
  final double iconSize;
  final Function onPressed;

  const CircleButtons({Key key,
   @required this.icon, 
   @required this.iconSize,
   @required this.onPressed})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.all(6.0),
      decoration:
          BoxDecoration(color: Colors.grey[200], shape: BoxShape.circle),
      child: IconButton(
        icon: Icon(icon),
        iconSize: iconSize,
        color: Colors.black,
        onPressed: onPressed,
      ),
    );
  }
}
