import 'package:flutter/material.dart';

class AppText extends StatelessWidget {
  double size;
  double height;
  final String text;
  Color color;
  final TextOverflow overFlow;
  
   AppText({
    Key? key,
    this.size=12,
    this.height=1.2,
    required this.text,
    this.overFlow = TextOverflow.ellipsis,
    this.color= const Color(0xFFccc7c5),
    
    }) :super(key: key);

 @override
  Widget build(BuildContext context) {
    return Text (
      text,
      
      style: TextStyle(
      fontFamily: 'Roboto',
      color:color,
      fontSize: size,
      height: height,
      ),
    );
  }
}