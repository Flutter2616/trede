import 'package:flutter/material.dart';
import 'package:moneytomoney/app_element/global_variable.dart';
import 'package:moneytomoney/app_element/images_path.dart';
import 'package:moneytomoney/page/dash/dash_provider.dart';
import 'package:sizer/sizer.dart';
import 'package:provider/provider.dart';
import 'package:moneytomoney/app_element/appcolor.dart';

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
      bottomNavigationBar: Consumer<DashProvider>(
        builder: (context, value, child) {
          return Container(
            height: 6.h,
            padding: EdgeInsets.all(8),
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: offWhite,
                border: Border(top: BorderSide(color: black, width: 1))),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                bottom_tab(
                    value.pageIndex == 0 ? "select_match.png" : "match.png",
                    "MATCH",
                    0),
                bottom_tab(
                    value.pageIndex == 1 ? "select_opinion.png" : "opinion.png",
                    "OPINION",
                    1),
                bottom_tab(
                    value.pageIndex == 2
                        ? "select_portfolio.png"
                        : "portfolio.png",
                    "PORTFOLIO",
                    2),
                bottom_tab(
                    value.pageIndex == 3 ? "select_reward.png" : "reward.png",
                    "REWARD",
                    3),
              ],
            ),
          );
        },
      ),
      appBar: AppBar(
        backgroundColor: appBarColor,
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
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            body10w400(text: "prince"),
            body12w400(text: "prince"),
            body15w400(text: "prince"),
            body18w400(text: "prince"),
          ],
        ),
      ),
      /*Stack(
        children: [
      /*Consumer<DashProvider>(
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
          ),*/
          Column(children: [

          ],),
          Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              height: 7.h,margin: EdgeInsets.all(10),
              decoration: BoxDecoration(
                  color: white,
                  borderRadius: BorderRadius.circular(10)),
              padding: EdgeInsets.all(2.sp),
              child: Consumer<DashProvider>(builder: (context, value, child) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    bottom_tab("Match", value.pageIndex!=0?"match.png":"select_match.png", 0),
                    bottom_tab("Opinion", value.pageIndex==1?"select_opinion.png":"opinion.png", 1),
                    bottom_tab("Portfolio", value.pageIndex==2?"select_portfolio.png":"portfolio.png", 2),
                    bottom_tab("Reward", value.pageIndex==3?"select_reward.png":"reward.png", 3),
                  ],
                );
              },),
            ),
          ),
        ],
      ),*/
    );
  }

  Widget bottom_tab(String img, String lable, int index) {
    return InkWell(
      onTap: () {
        context.read<DashProvider>().chnagePageIndex(index);
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(
            "${ImagePath.path.bottombarImage}${img}",
            height: 5.w,
            width: 5.w,
            fit: BoxFit.fill,
          ),
          body10w400(text: "${lable}"),
        ],
      ),
    );
  }
}
