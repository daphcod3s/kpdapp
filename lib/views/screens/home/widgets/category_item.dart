import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/models/category.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class CategoryItem extends StatelessWidget {
  final Category category;

  const CategoryItem({Key key, this.category}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    var height = MediaQuery.of(context).size.height;
    var width = MediaQuery.of(context).size.width;
    var id = category.id;
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
                  image: AssetImage(category.imagePath),
                  fit: BoxFit.cover,
                  width: width * 0.2,
                  height: height * 0.1,
                ),
              ),
            ),
            SizedBox(
              height: 5.0,
            ),
            Text(
              category.name,
              style: AppTypography.regularText,
            )
          ],
        ),
      ),
    );
  }
}
