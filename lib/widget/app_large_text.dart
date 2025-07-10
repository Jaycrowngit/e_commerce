import 'package:flutter/material.dart';
import 'package:my_app3/utils/dimensions.dart';

class AppLargeText extends StatelessWidget {
  final  size;
  final String text;
  final Color color;
  final TextOverflow overFlow;

  const AppLargeText({
    Key? key,
    this.size = 10,
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.color = const Color(0xFF332d2b),
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      maxLines: 1,
      overflow: overFlow,
      style: TextStyle(
        fontFamily: 'Roboto',
        color: color,
        fontSize: Dimensions.font20,
        fontWeight: FontWeight.w400,
      ),
    );
  }
}
