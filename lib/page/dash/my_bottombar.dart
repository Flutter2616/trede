import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:moneytomoney/app_element/global_variable.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:moneytomoney/page/dash/dash_provider.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/page/wallet/wallet_screen.dart';

import '../home_screen/home_screen.dart';

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
      backgroundColor: white,
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
      body: Stack(
        children: [
          Consumer<DashProvider>(
            builder: (context, value, child) {
              return IndexedStack(
                index: value.pageIndex,
                children: <Widget>[
                  HomeScreen(),
                  Container(),
                  WalletScreen(),
                  WalletScreen(),
                ],
              );
            },
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 7.h,
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(8.sp),
                      topRight: Radius.circular(8.sp))),
              padding: EdgeInsets.all(2.sp),
              child: Consumer<DashProvider>(builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bottom_tab("Match", value.pageIndex==0?"match.svg":"match_unselect.svg", 0),
                    bottom_tab("Opinion", value.pageIndex==1?"opinion.svg":"opnion_unselect.svg", 1),
                    bottom_tab("Portfolio", value.pageIndex==2?"portfolio.svg":"portfolio_unselect.svg", 2),
                    bottom_tab("Reward", value.pageIndex==3?"reward.svg":"reward_unselect.svg", 3),
                  ],
                );
              },),
            ),
          ),
        ],
      ),
    );
  }

  Widget bottom_tab(String lable, String img, int index) {
    return InkWell(onTap: () {
      context.read<DashProvider>().chnagePageIndex(index);
    },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          SvgPicture.asset(
            "${ImagePath.path.bottombarImage}${img}",
            height: 7.w,
            width: 7.w,
            fit: BoxFit.fill,
          ),
          height(10),
          title12w600(text: "${lable}",textColor: black),
        ],
      ),
    );
  }
}
