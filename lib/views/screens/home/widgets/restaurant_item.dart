import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/models/restaurant.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class RestaurantItem extends StatelessWidget {
  final Restaurant restaurant;

  const RestaurantItem({Key key, this.restaurant}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var id = restaurant.id;
    var cuisines = restaurant.cuisines.join(', ');
    var height = MediaQuery.of(context).size.height;
    // var width = MediaQuery.of(context).size.width;
    return GestureDetector(
      onTap: () => print('Restaurant $id'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
          image: DecorationImage(
            image: AssetImage(
              restaurant.imagePath,
            ),
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.5), BlendMode.srcOver),
          ),
        ),
        height: height * 0.2,
        margin: const EdgeInsets.fromLTRB(4.0, 0, 4.0, 10.0),
        padding: const EdgeInsets.all(10.0),
        child: Container(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                restaurant.name,
                style: AppTypography.regularHeader,
              ),
              Text(
                '${restaurant.location}, ${restaurant.city}',
                style: AppTypography.regularText,
              ),
              Text(
                cuisines,
                style: AppTypography.labelText,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
