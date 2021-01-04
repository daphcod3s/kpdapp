import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CustomButton extends StatelessWidget {
  final Color bgColor;
  final String text;
  final TextStyle textStyle;
  final Function onTap;
  final String imagePath;

  const CustomButton(
      {Key key,
      @required this.bgColor,
      @required this.onTap,
      @required this.textStyle,
      @required this.imagePath,
      this.text})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(horizontal: 10.0),
        padding: const EdgeInsets.symmetric(vertical: 10.0, horizontal: 10.0),
        width: MediaQuery.of(context).size.width * 0.3,
        decoration: BoxDecoration(
          color: bgColor,
          borderRadius: BorderRadius.circular(6.0),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            SvgPicture.asset(imagePath),
            Text(
              text,
              style: textStyle,
            )
          ],
        ),
      ),
    );
  }
}
