import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/models/cuisine.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class CuisineItem extends StatelessWidget {
  final Cuisine cuisine;

  const CuisineItem({Key key, this.cuisine}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var id = cuisine.id;
    return GestureDetector(
      onTap: () => print('Category $id'),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6.0),
        ),
        margin: const EdgeInsets.symmetric(horizontal: 4.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: ClipRRect(
                borderRadius: BorderRadius.circular(6.0),
                child: Image(
                  image: AssetImage(cuisine.imagePath),
                  fit: BoxFit.cover,
                  width: width * 0.4,
                  height: height * 0.1,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              cuisine.name,
              style: AppTypography.regularText,
            )
          ],
        ),
      ),
    );
  }
}
