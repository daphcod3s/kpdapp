import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/models/category.dart';
import 'package:kpdelivery/business_logic/models/cuisine.dart';
import 'package:kpdelivery/business_logic/models/restaurant.dart';
import 'package:kpdelivery/views/constants/colors.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';
import 'package:kpdelivery/views/screens/home/widgets/category_item.dart';
import 'package:kpdelivery/views/screens/home/widgets/cuisine_item.dart';
import 'package:kpdelivery/views/screens/home/widgets/restaurant_item.dart';
import 'package:kpdelivery/views/screens/home/widgets/search_box.dart';
import 'package:kpdelivery/views/screens/home/widgets/section_header.dart';

class ExploreTab extends StatelessWidget {
  final List<Category> categories = Category.fetchAll();
  final List<Restaurant> restaurants = Restaurant.fetchAll();
  final List<Cuisine> cuisines = Cuisine.fetchAll();
  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          color: Colors.black,
          margin: const EdgeInsets.only(top: 0),
          child: ListView(
            children: [
              Container(
                margin: const EdgeInsets.only(top: 50.0),
                child: SectionHeader(
                  text: 'Popular Categories',
                  action: GestureDetector(
                    onTap: () {
                      print('See all categories');
                    },
                    child: Container(
                      padding: const EdgeInsets.symmetric(
                        vertical: 5.0,
                        horizontal: 10.0,
                      ),
                      decoration: BoxDecoration(
                        color: AppColors.lightGrey.withOpacity(0.4),
                        borderRadius: BorderRadius.circular(6.0),
                      ),
                      child: Text(
                        'See All',
                        style: AppTypography.labelText,
                      ),
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 140.0,
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (OverscrollIndicatorNotification overscroll) {
                    overscroll.disallowGlow();
                    return true;
                  },
                  child: ListView.builder(
                    itemCount: categories.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CategoryItem(category: categories[index]);
                    },
                  ),
                ),
              ),
              SectionHeader(
                text: 'Cuisines',
                action: GestureDetector(
                  onTap: () {
                    print('See all cuisines');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Text(
                      'See All',
                      style: AppTypography.labelText,
                    ),
                  ),
                ),
              ),
              SizedBox(
                height: 140.0,
                child: NotificationListener<OverscrollIndicatorNotification>(
                  onNotification: (OverscrollIndicatorNotification overscroll) {
                    overscroll.disallowGlow();
                    return true;
                  },
                  child: ListView.builder(
                    itemCount: cuisines.length,
                    scrollDirection: Axis.horizontal,
                    itemBuilder: (context, index) {
                      return CuisineItem(cuisine: cuisines[index]);
                    },
                  ),
                ),
              ),
              SectionHeader(
                text: 'Restaurants',
                action: GestureDetector(
                  onTap: () {
                    print('See all restaurants');
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                      vertical: 5.0,
                      horizontal: 10.0,
                    ),
                    decoration: BoxDecoration(
                      color: AppColors.lightGrey.withOpacity(0.4),
                      borderRadius: BorderRadius.circular(6.0),
                    ),
                    child: Text(
                      'See All',
                      style: AppTypography.labelText,
                    ),
                  ),
                ),
              ),
              Container(
                child: ListView.builder(
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemCount: restaurants.length,
                  itemBuilder: (context, index) {
                    return RestaurantItem(restaurant: restaurants[index]);
                  },
                ),
              ),
            ],
          ),
        ),
        SearchForm(),
      ],
    );
  }
}
