import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneytomoney/app_element/global_variable.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:sizer/sizer.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/page/wallet/wallet_screen.dart';

import 'home_screen/home_screen.dart';

class MyBottom extends StatefulWidget {
  MyBottom({Key? key}) : super(key: key);

  @override
  State<MyBottom> createState() => _MyBottomState();
}

class _MyBottomState extends State<MyBottom> {
  final PageController _pageController = PageController();

  @override
  void dispose() {
    _pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: primary1,
        leading: const Padding(
          padding: EdgeInsets.all(8.0),
          child: CircleAvatar(
            backgroundColor: Colors.blue,
          ),
        ),
        title: const Text(
          "Hiren Surani",
          style: TextStyle(color: white),
        ),
        actions: [
          Container(
            padding: const EdgeInsets.all(8.0),
            margin: const EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(
              color: white,
              borderRadius: BorderRadius.circular(10),
            ),
            child: Row(
              children: [
                const Icon(Icons.account_balance_wallet_outlined),
                SizedBox(
                  width: 3.w,
                ),
                const Text("₹100"),
              ],
            ),
          ),
        ],
      ),
      body: PageView(
        controller: _pageController,
        children: <Widget>[
          HomeScreen(),
          Container(),
          WalletScreen(),
          WalletScreen(),
        ],
      ),
      extendBody: true,
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        items: [
          bottom_tab("PREDICTION", "match.svg", "match_unselect.svg"),
          bottom_tab("OPINION", "opinion.svg", "opnion_unselect.svg"),
          bottom_tab("PORTFOLIO", "portfolio.svg", "portfolio_unselect.svg"),
          bottom_tab("REWARD", "reward.svg", "reward_unselect.svg"),
        ],
        backgroundColor: bgColor,
      ),
    );
  }

  BottomNavigationBarItem bottom_tab(
      String lable, String activeImage, String unactiveImage) {
    return BottomNavigationBarItem(
      label: "${lable}",
      icon: SvgPicture.asset(
        "${ImagePath.path.bottombarImage}${unactiveImage}",
        height: 7.w,
        width: 7.w,
        fit: BoxFit.fill,
      ),
      activeIcon: SvgPicture.asset(
        "${ImagePath.path.bottombarImage}${activeImage}",
        height: 7.w,
        width: 7.w,
        fit: BoxFit.fill,
      ),
    );
  }
}
