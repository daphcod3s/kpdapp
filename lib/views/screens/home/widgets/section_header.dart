import 'package:flutter/material.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class SectionHeader extends StatelessWidget {
  final String text;
  final Widget action;
  final double marginTop;

  const SectionHeader({Key key, this.text, this.action, this.marginTop})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(10.0),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            text,
            style: AppTypography.regularHeader,
          ),
          action
        ],
      ),
    );
  }
}
