// import 'package:flutter/cupertino.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter/widgets.dart';
// import 'package:sizer/sizer.dart';
//
// import '../app_element/appcolor.dart';
//
// class Question extends StatelessWidget {
//   const Question({super.key});
//
//   @override
//   Widget build(BuildContext context) {
//     return Padding(
//       padding: const EdgeInsets.all(8.0),
//       child: Container(
//         height: 43.w,
//         decoration: BoxDecoration(
//             color: offWhite, borderRadius: BorderRadius.circular(10)),
//         child: Column(
//           children: [
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
//               child: Row(
//                 children: [
//                   Padding(
//                     padding: EdgeInsets.symmetric(horizontal: 1.w),
//                     child: Icon(
//                       Icons.timer_sharp,
//                       size: 12.sp,
//                     ),
//                   ),
//                   Text(
//                     "Ends on may 7th",
//                     style: TextStyle(fontSize: 12.sp),
//                   ),
//                   Spacer(),
//                   Text(
//                     "7329 Trades",
//                     style: TextStyle(fontSize: 12.sp),
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(
//                 horizontal: 3.w,
//               ),
//               child: Row(
//                 children: [
//                   SizedBox(
//                       height: 11.w,
//                       width: 11.w,
//                       child: CircleAvatar(
//                         backgroundColor: Colors.blue,
//                         backgroundImage: NetworkImage(
//                             "https://static.india.com/wp-content/uploads/2023/08/Top-10-Most-Followed-Cricketers-on-Instagram-1.png"),
//                       )),
//                   Padding(
//                     padding: EdgeInsets.only(left: 3.w),
//                     child: Text(
//                       "Punjab to win the match vs Chennai?",
//                       style: TextStyle(fontSize: 12.sp),
//                     ),
//                   )
//                 ],
//               ),
//             ),
//             Padding(
//               padding: EdgeInsets.symmetric(horizontal: 3.w, vertical: 1.h),
//               child: Container(
//                 decoration: BoxDecoration(
//                     color: cornflowerBlue,
//                     borderRadius: BorderRadius.circular(5)),
//                 child: Row(
//                   mainAxisAlignment: MainAxisAlignment.center,
//                   children: [
//                     Padding(
//                       padding: EdgeInsets.all(4.sp),
//                       child: Icon(
//                         Icons.lightbulb_outline,
//                         size: 12.sp,
//                       ),
//                     ),
//                     Text(
//                       "  CHN 99/4 @ 12.1 overs  ",
//                       style: TextStyle(fontSize: 10.sp),
//                     ),
//                   ],
//                 ),
//               ),
//             ),
//             Row(
//               mainAxisAlignment: MainAxisAlignment.spaceBetween,
//               children: [
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 9.w,
//                       decoration: BoxDecoration(
//                           color: babyBlue,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: Center(
//                           child: Text(
//                         "Yes | 1.25",
//                         style: TextStyle(fontSize: 10.sp),
//                       )),
//                     ),
//                   ),
//                 ),
//                 Expanded(
//                   child: Padding(
//                     padding: const EdgeInsets.all(8.0),
//                     child: Container(
//                       height: 9.w,
//                       decoration: BoxDecoration(
//                           color: babyBlue,
//                           borderRadius: BorderRadius.circular(8)),
//                       child: Center(
//                           child: Text(
//                         "No | 1.25",
//                         style: TextStyle(fontSize: 10.sp),
//                       )),
//                     ),
//                   ),
//                 )
//               ],
//             )
//           ],
//         ),
//       ),
//     );
//   }
// }
