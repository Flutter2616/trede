import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';
import '../../app_element/appcolor.dart';

class WalletScreen extends StatefulWidget {
  const WalletScreen ({super.key});

  @override
  State<WalletScreen> createState() => _WalletScreenState();
}

class _WalletScreenState extends State<WalletScreen > {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
Container(
  height: 45.w,
  margin: EdgeInsets.all(5),
  decoration: BoxDecoration(
    color: primary1,
    borderRadius: BorderRadius.circular(20)
  ),
child:Center(
  child:Padding(
    padding: const EdgeInsets.symmetric(horizontal: 20),
    child: Row(
      children: [
        Column(mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text("₹ 5000",style: TextStyle(fontSize: 30.sp,color: white,fontWeight: FontWeight.w600),),
            Text("Available Cash",style: TextStyle(fontSize: 13.sp,color: white,),),
          ],
        ),
        Spacer(),
/*        Padding(
          padding:  EdgeInsets.symmetric(horizontal: 15),
          child:  AnimatedIcon(
            icon: AnimatedIcons.add_event, // Choose the icon you want
            progress: _animationController, // Animation controller
          ),
        ),*/
        SizedBox(
            height: 15.w,
            width: 15.w,
            child: CircleAvatar(backgroundColor: Colors.blue,backgroundImage: NetworkImage("https://static.india.com/wp-content/uploads/2023/08/Top-10-Most-Followed-Cricketers-on-Instagram-1.png"),))
      ],
    ),
  ),
),
)
        ],
      ),
    );
  }
}
