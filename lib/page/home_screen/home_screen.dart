import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import 'package:moneytomoney/app_element/appcolor.dart';
import 'package:moneytomoney/utils/on_boarding_widget.dart';
import 'package:moneytomoney/utils/question_widget.dart';
import '../../app_element/global_variable.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});
  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: lightGray,
      body: SingleChildScrollView(
        child: Column(
          children: [
            const Padding(
              padding: EdgeInsets.only(bottom: 12),
              child: SliderGlobal(),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 5),
              child: SizedBox(
                height: 11.h,
                child: ListView.builder(
                  itemCount: 10,
                  scrollDirection: Axis.horizontal,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Column(
                        children: [
                          Container(
                            width: 13.w,
                            height: 6.h,
                            decoration: BoxDecoration(
                                color: Colors.grey,
                                image: DecorationImage(
                                    image: NetworkImage(
                                        "https://img.etimg.com/thumb/width-1200,height-900,imgsize-1157704,resizemode-75,msid-94321543/news/sports/new-cricket-rules-saliva-ban-made-permanent-icc-announces-a-slew-of-changes-to-playing-conditions.jpg"),fit: BoxFit.fill),
                                borderRadius: BorderRadius.circular(10)),
                          ),
                          // Text(
                          //   "Cricket",
                          //   style: titleMedium,
                          // ),
                        ],
                      ),
                    );
                  },
                ),
              ),
            ),
            ListView.builder(
              physics: const NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              itemCount: 10,
              itemBuilder: (context, index) {
                return const Question();
              },
            ),
          ],
        ),
      ),
    );
  }
}
