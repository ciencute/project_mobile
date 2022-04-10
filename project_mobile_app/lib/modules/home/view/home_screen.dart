import 'package:animations/animations.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:project_mobile_app/modules/home/cubit/home_cubit.dart';
import 'package:project_mobile_app/shared/widgets/appbar/appbar.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart';

import '../../../shared/constants/common.dart';
import '../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../shared/styles/style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';

part 'home_screen.children.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  List ctgs = ['Action','Love','Romatic','Comedy','Cartoon'];
  // late HomeCubit _cubit;

  @override
  void initState() {
    super.initState();
    // _cubit = HomeCubit();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
return Container(
      decoration: const BoxDecoration(
          gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.bottomCenter,
              colors: [Color.fromARGB(255, 3, 126, 99), Colors.black])),
      child: Scaffold(
        backgroundColor: Colors.transparent,
        // appBar: appbar(context,'kien'),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              margin: EdgeInsets.only(left: 48, right: 48, top: 85),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text.rich(
                        TextSpan(
                          text: 'Hello ',
                          style: TextStyleApp().text247000W(),
                          children: <InlineSpan>[
                            TextSpan(
                              text: 'Daizy!',
                              style: TextStyleApp().text245000W(),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(
                        height: 5,
                      ),
                      Text(
                        'Check for latest addition.',
                        style: TextStyleApp().text14500G3(),
                      )
                    ],
                  ),
                  const CircleAvatar(
                    radius: 30.0,
                    backgroundImage: AssetImage('assets/img/others/avt.jpg'),
                    backgroundColor: Colors.transparent,
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 18, vertical: 16),
              margin: EdgeInsets.symmetric(horizontal: 48, vertical: 36),
              decoration: BoxDecoration(
                  color: Colors.black.withOpacity(0.3),
                  border: Border.all(
                      width: 1, color: Colors.white.withOpacity(0.4)),
                  borderRadius: BorderRadius.circular(20)),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 21,
                        height: 21,
                        decoration: const BoxDecoration(
                          image: DecorationImage(
                            image: Svg(
                              'assets/img/home/search.svg',
                            ),
                            fit: BoxFit.cover,
                          ),
                        ),
                        child: SizedBox(),
                      ),
                      SizedBox(width: 10),
                      Text(
                        'Search',
                        style: TextStyleApp().text14500G2(),
                      )
                    ],
                  ),
      SizedBox()
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 48),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Filters',
                    style: TextStyleApp().text18500W(),
                  ),
                  SizedBox(
                    height: 16,
                  ),
                  Container(
                    width: Get.width,
                    height: 100,
                    child: ListView.builder(
                      shrinkWrap: true,
                      scrollDirection: Axis.horizontal,
                      itemBuilder: (context, index) => Row(
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Row(
                                children: [
                                  Container(
                                    width: 55,
                                    height: 55,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(15),
                                      color: Colors.black,
                                    ),
                                    child: Center(
                                      child: Icon(Icons.question_mark,
                                          color: Colors.white, size: 30),
                                    ),
                                  ),
   
                                ],
                              ),
                              SizedBox(
                                height: 8,
                              ),
                              Text(
                                ctgs[index],
                                style: TextStyleApp().text12700W(),
                              )
                            ],
                          ),
                                                     SizedBox(
                                width: 33,
                              )
                          
                        ],
                      ),
                      itemCount: 5,
                    ),
                  ),
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.symmetric(horizontal: 48, vertical: 36),
              child: Text.rich(
                TextSpan(
                  text: 'Featured ',
                  style: TextStyleApp().text247000W(),
                  children: <InlineSpan>[
                    TextSpan(
                      text: 'Series',
                      style: TextStyleApp().text245000W(),
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
));
  }
}
