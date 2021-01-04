import 'dart:async';

import 'package:flutter/material.dart';
import 'package:kpdelivery/business_logic/utils/auth/authentication_state.dart';
import 'package:kpdelivery/views/screens/home/tabs/cart.dart';
import 'package:kpdelivery/views/screens/home/tabs/explore.dart';
import 'package:kpdelivery/views/screens/home/tabs/offers.dart';
import 'package:kpdelivery/views/screens/home/tabs/profile.dart';
import 'package:kpdelivery/views/screens/home/widgets/bottom_tabs.dart';

class HomePage extends StatefulWidget {
  final StreamController<AuthState> _streamController;
  HomePage(this._streamController);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  PageController _tabsPageController;
  int _selectedTab = 0;

  @override
  void initState() {
    _tabsPageController = PageController();
    super.initState();
  }

  @override
  void dispose() {
    _tabsPageController.dispose();
    super.dispose();
  }

  signOut() async {
    widget._streamController.add(AuthState.signedOut());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Expanded(
              child: PageView(
                controller: _tabsPageController,
                onPageChanged: (num) {
                  setState(() {
                    _selectedTab = num;
                  });
                },
                children: [
                  ExploreTab(),
                  OffersTab(),
                  ProfileTab(),
                  CartTab(),
                ],
              ),
            ),
            BottomTabs(
              selectedTab: _selectedTab,
              tabPressed: (num) {
                _tabsPageController.animateToPage(
                  num,
                  duration: Duration(milliseconds: 300),
                  curve: Curves.easeOutCubic,
                );
              },
            )
          ],
        ),
      ),
    );
  }
}
