import 'package:app_mobile/shared/constants/colors.dart';
import 'package:app_mobile/shared/styles/body_style/body_text_style.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/styles/label_style/label_text_style.dart';

class CardWidget extends StatelessWidget {
  List data = [
    {"color": Color(0xffff6968)},
    {"color": Color.fromARGB(255, 28, 204, 116)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
    {"color": Color.fromARGB(255, 168, 79, 209)},
    {"color": Color(0xff96da45)},
    {"color": Color(0xffff6968)},
    {"color": Color(0xff7a54ff)},
    {"color": Color(0xffff8f61)},
    {"color": Color(0xff2ac3ff)},
    {"color": Color(0xff5a65ff)},
    {"color": Color(0xff96da45)},
  ];
  List movies = ['#1','#2','#3','#4','#5','#6','#7','#8','#9','#10'];

  final colorwhite = Colors.white;
  final bool isFvted =false;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(children: [
        const SizedBox(
          height: 16,
        ),
        Wrap(
          spacing: 16,
          runSpacing: 16,
          children: List.generate(10, (index) {
            return Container(
              width: (Get.width - 32 - 16) / 2,
              padding: const EdgeInsets.all(8),
              child: Column(
                children: [
                  Stack(
                    children: [
                      ClipRRect(
                        borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(10),
                          topRight: Radius.circular(10),
                          bottomLeft: Radius.zero,
                          bottomRight: Radius.zero,
                        ),
                        child: Container(
                          width: Get.width,
                          height: 200,
                          color: data[index]['color'],
                          child: Center(
                            child: Text(movies[index],
                            style: Textbody4.defaultStyle.copyWith(fontSize: 50),),
                          ),
                        ),
                      ),
                      Positioned(
                          right: 0,
                          top: 0,
                          child: Container(
                            padding: EdgeInsets.all(8),
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                color: AppColors.colorLight.withOpacity(0.5)),
                            child: InkWell(
                              child:  const Icon(
                                Icons.favorite_border,
                                color: AppColors.colorLight,
                              ),
                              onTap: (){
                                // sets
                              },
                            ),
                          ))
                    ],
                  ),
                  Container(
                    decoration: BoxDecoration(
                      color: AppColors.thirdTextColorLight.withOpacity(0.5),
                      borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(0),
                        bottomRight: Radius.circular(.0),
                        topLeft: Radius.zero,
                        topRight: Radius.zero,
                      ),
                    ),
                    height: 50,
                    child: Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Icon(
                            Icons.info_outline_rounded,
                            color: AppColors.colorLight.withOpacity(0.7),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: AppColors.colorLight.withOpacity(0.7),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Textlabel3('Phim chất lượng cao'),
                ],
              ),
            );
          }),
        ),
        SizedBox(
          height: 20,
        ),

      ]),
    );
  }
}

class DEFAULT_WIDTH {}
