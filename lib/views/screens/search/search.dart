import 'package:flutter/material.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class SearchPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        child: Center(
          child: Text(
            'Search Page',
            style: AppTypography.regularText,
          ),
        ),
      ),
    );
  }
}
