import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class SliderGlobal extends StatefulWidget {
  // final List<feature.Data> dataList;
  const SliderGlobal({super.key , /*required this.dataList*/});

  @override
  State<SliderGlobal> createState() => _SliderGlobalState();
}

class _SliderGlobalState extends State<SliderGlobal> {
  final _carouselController = CarouselController();
  int _current = 0;
List images = [
  "https://t4.ftcdn.net/jpg/04/48/70/33/360_F_448703360_Yl1j5l882016Uzmo52mqGx2eu9h07Apt.jpg",
"https://t4.ftcdn.net/jpg/04/48/70/33/360_F_448703360_Yl1j5l882016Uzmo52mqGx2eu9h07Apt.jpg",
"https://t4.ftcdn.net/jpg/04/48/70/33/360_F_448703360_Yl1j5l882016Uzmo52mqGx2eu9h07Apt.jpg"];
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(
        top: 5,

      ),
      child: Column(
        children: [
          CarouselSlider(
            carouselController: _carouselController,
            options: CarouselOptions(
                viewportFraction: 1,
                enlargeCenterPage: true,
                autoPlay: false,
                // enlargeCenterPage: true,
                height: 20.h,
                onPageChanged: (index, reason) {
                  setState(() {
                    _current = index;
                  });
                }),
            items: images.asMap().entries.map((i) {
              return Builder(
                builder: (BuildContext context) {
                  return Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Container(
                        decoration: BoxDecoration(
                          color:Colors.deepPurple,
                          image: DecorationImage(
                              fit: BoxFit.fill,
                              image: NetworkImage(
                                  "${images[i.key]}")),
                        ),
                       ),
                  );
                },
              );
            }).toList(),
          ),
          SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
