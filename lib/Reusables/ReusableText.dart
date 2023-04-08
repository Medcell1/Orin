import 'package:flutter/material.dart';
import 'package:orin/constants.dart';

class ReusableText extends StatelessWidget {
  String? text1;
  String? text2;
  ReusableText({Key? key, this.text1, this.text2}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(
        children: [
          Text(
            text1!,
            style: titleStyle,
          ),
          Text(
            text2!,
            style: artistStyle,
          )
        ],
      ),
    );
  }
}
