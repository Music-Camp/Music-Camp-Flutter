import 'package:flutter/material.dart';
import 'package:velocity_x/velocity_x.dart';

class CountIcon extends StatefulWidget {
  final IconData iconData;
  final int count;
  final Color color;

  const CountIcon(
      {super.key,
      required this.iconData,
      required this.count,
      required this.color});

  @override
  State<CountIcon> createState() => _CountIconState();
}

class _CountIconState extends State<CountIcon> {
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          widget.iconData,
          color: widget.color,
        ),
        Text(
          "${widget.count}",
          style: TextStyle(color: widget.color),
        ).pLTRB(5, 0, 0, 0)
      ],
    );
  }
}
