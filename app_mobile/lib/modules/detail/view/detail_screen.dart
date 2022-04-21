import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../shared/styles/body_style/body_text_style.dart';
part 'deatil_screen.children.dart';

class DetailScreen extends StatefulWidget {
  const DetailScreen({Key? key}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: Get.height * 0.65,
              child: Stack(
                children: [
                  Container(
                    width: Get.width,
                    height: Get.height * 0.45,
                    child: ClipRRect(
                      borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(30),
                          bottomRight: Radius.circular(30)),
                      child: Image.asset(
                        'lib/resource/assets_resources/images/image_app/image_moive1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ),
                  Positioned.fill(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Padding(
                      padding: EdgeInsets.only(top: Get.width * 0.8),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Icon(
                            Icons.play_circle,
                            color: Color(0xffFF3B30),
                            size: 60,
                          ),
                          SizedBox(
                            height: 10,
                          ),
                          Textbody3(
                            'Money Heist: Part 5',
                            style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w600,
                                ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              Textbody2(
                                '2021',
                                style: TextStyle(color: Color(0xffA0A0A0)),
                              ),
                              Container(
                                width: 1,
                                height: 20,
                                color: Colors.black.withOpacity(0.5),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                              ),
                              Textbody2(
                                'Action, Crime, Drama',
                                style: TextStyle(color: Color(0xffA0A0A0)),
                              ),
                              Container(
                                width: 1,
                                height: 20,
                                color: Colors.black.withOpacity(0.5),
                                margin: EdgeInsets.symmetric(horizontal: 5),
                              ),
                              Textbody2(
                                'Episode - 8',
                                style: TextStyle(color: Color(0xffA0A0A0)),
                              ),
                            ],
                          ),
                          Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: List.generate(
                                  5,
                                  (i) => Icon(
                                        Icons.star,
                                        color: 4 > i
                                            ? Color(0xffFFCC09)
                                            : Theme.of(context)
                                                .hintColor
                                                .withOpacity(0.2),
                                        size: 30.0,
                                      ))),
                        ],
                      ),
                    ),
                  ))
                ],
              ),
            ),
            Container(
              margin: EdgeInsets.only(left: 30),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'Episodes',
                          style: Textbody1.defaultStyle.copyWith(
                              fontSize: 18,
                              fontWeight: FontWeight.w500),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          width: Get.width,
                          height: 170,
                          child: ListView.builder(
                            shrinkWrap: true,
                            scrollDirection: Axis.horizontal,
                            itemBuilder: (context, index) => Row(
                              children: [
                                Stack(
                                  children: [
                                    Container(
                                      child: Image.asset(
                                          'lib/resource/assets_resources/images/image_app/image_moive1.png',
                                          width: 110,
                                          height: 165),
                                    ),
                                    Positioned.fill(
                                        child: Align(
                                            alignment: Alignment.bottomCenter,
                                            child: Padding(
                                              padding:  EdgeInsets.only(top: 110),
                                              child: Column(
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  Textbody1('Episode-#'),
                                                  Expanded(
                                                    child: Textbody2(
                                                      'Action, Crime',
                                                      textAlign: TextAlign.center,
                                                      style: TextStyle(
                                                          color: Color(0xffA0A0A0)),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            )))
                                  ],
                                ),
                                SizedBox(
                                  width: 30,
                                )
                              ],
                            ),
                            itemCount: 5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    height: 25,
                  ),
                  Text(
                    'Discover Seattle',
                    style: Textbody1.defaultStyle.copyWith(
                        fontSize: 18,
                        fontWeight: FontWeight.w700),
                  ),
                  Padding(
                    padding: EdgeInsets.only(right: 29, bottom: 32, top: 4),
                    child: Text(
                      'Eight thieves take hostages and lock themselves in the Royal Mint of Spain as a criminal mastermind manipulates the police to carry out his plan.',
                      style: Textbody1.defaultStyle.copyWith(
                          color: Color(0xffA0A0A0),
                          fontSize: 14,
                          fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      
    );
  }
}
