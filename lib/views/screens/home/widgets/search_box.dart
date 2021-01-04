import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kpdelivery/views/constants/colors.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';
import 'package:kpdelivery/views/screens/search/search.dart';

class SearchForm extends StatelessWidget {
  final GlobalKey<NavigatorState> navigatorKey;

  SearchForm({Key key, this.navigatorKey}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.fromLTRB(10.0, 5.0, 10.0, 10.0),
      color: Colors.black.withOpacity(0.8),
      child: GestureDetector(
        onTap: () {
          Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => SearchPage(),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6.0),
            color: AppColors.darkGrey,
          ),
          padding: const EdgeInsets.symmetric(horizontal: 10.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search for meals or restaurant..',
                style: AppTypography.regularText,
              ),
              Padding(
                padding: const EdgeInsets.fromLTRB(10.0, 10.0, 0, 10.0),
                child: SvgPicture.asset(
                  'assets/icons/location.svg',
                  color: Colors.white,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
