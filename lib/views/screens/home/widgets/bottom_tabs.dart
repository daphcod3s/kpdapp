import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:kpdelivery/views/constants/text_theme.dart';

class BottomTabs extends StatefulWidget {
  final int selectedTab;
  final Function(int) tabPressed;

  const BottomTabs({Key key, this.selectedTab = 0, this.tabPressed})
      : super(key: key);
  @override
  _BottomTabsState createState() => _BottomTabsState();
}

class _BottomTabsState extends State<BottomTabs> {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        color: Theme.of(context).primaryColor,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            spreadRadius: 1.0,
            blurRadius: 30.0,
          )
        ],
      ),
      padding: const EdgeInsets.symmetric(
        vertical: 15.0,
        horizontal: 20.0,
      ),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          BottomTabItem(
            iconPath: "assets/icons/Explore.svg",
            text: 'Explore',
            selected: widget.selectedTab == 0 ? true : false,
            onPressed: () {
              widget.tabPressed(0);
            },
          ),
          BottomTabItem(
            iconPath: "assets/icons/Offers.svg",
            text: 'Offers',
            selected: widget.selectedTab == 1 ? true : false,
            onPressed: () {
              widget.tabPressed(1);
            },
          ),
          BottomTabItem(
            iconPath: "assets/icons/Profile.svg",
            text: 'Profile',
            selected: widget.selectedTab == 2 ? true : false,
            onPressed: () {
              widget.tabPressed(2);
            },
          ),
          BottomTabItem(
            iconPath: "assets/icons/Cart.svg",
            text: 'Cart',
            selected: widget.selectedTab == 3 ? true : false,
            onPressed: () {
              widget.tabPressed(3);
            },
          ),
        ],
      ),
    );
  }
}

class BottomTabItem extends StatelessWidget {
  final String iconPath;
  final bool selected;
  final Function onPressed;
  final String text;

  const BottomTabItem(
      {Key key,
      this.iconPath,
      this.selected = false,
      this.onPressed,
      this.text})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 300),
        curve: Curves.easeOutCubic,
        alignment: Alignment.center,
        decoration: BoxDecoration(
          color: selected ? Colors.black.withOpacity(0.1) : Colors.transparent,
          borderRadius: BorderRadius.circular(6.0),
        ),
        // height: height * 0.1,
        padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 4.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.only(right: 4.0),
              child: SvgPicture.asset(
                iconPath,
                color: Colors.white,
              ),
            ),
            Text(
              selected ? text : '',
              style: AppTypography.regularText,
              overflow: TextOverflow.ellipsis,
            ),
          ],
        ),
      ),
    );
  }
}
