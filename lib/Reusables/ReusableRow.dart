import 'package:flutter/material.dart';
import 'package:orin/constants.dart';

class ReusableRow extends StatelessWidget {
  final dynamic icon;
  String? text;
  ReusableRow({Key? key, this.icon, this.text, required this.function})
      : super(key: key);
  final dynamic function;
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 5),
      child: GestureDetector(
        onTap: function,
        child: ListTile(
          dense: true,
          // visualDensity: VisualDensity(vertical: 0),
          horizontalTitleGap: 1,
          leading: Icon(
            icon,
            color: Colors.black,
          ),
          title: Text(
            text!,
            style: musicStuff,
          ),
        ),
        // child: Row(
        //   children: [
        //     Icon(icon),
        //     SizedBox(
        //       width: 10,
        //     ),
        //     Text(
        //       text!,
        //       style: musicStuff,
        //     ),
        //     ],
        //   ),
      ),
    );
  }
}
