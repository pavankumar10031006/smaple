import 'package:flutter/cupertino.dart';

class TextWidget extends StatelessWidget {
  String textName;
  double fontSize;
  FontWeight fontWeight;
  Color color;

  TextWidget(this.textName, this.fontSize, this.fontWeight, this.color);

  @override
  Widget build(BuildContext context) {
    return Text(
      textName,
      style: TextStyle(
        fontSize: fontSize,
        fontWeight: fontWeight,
        color: color,
      ),
    );
  }
}
