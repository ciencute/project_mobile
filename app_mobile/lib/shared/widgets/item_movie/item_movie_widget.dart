import 'package:app_mobile/api/models/ui_item/ui_item.dart';
import 'package:flutter/material.dart';

import '../../constants/colors.dart';
import '../../constants/common.dart';
import '../../styles/body_style/body_text_style.dart';
import '../../styles/label_style/label_text_style.dart';

class ItemMovieWidget extends StatelessWidget {
  final UIItem item;
  const ItemMovieWidget({Key? key, required this.item}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.all(CommonConstants.kDefaultPadding / 2),
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
                  decoration: BoxDecoration(
                      image: DecorationImage(
                    image: NetworkImage(item.img ?? ''),
                    fit: BoxFit.fill,
                  )),
                  width: DEFAULT_WIDTH,
                  height: 200,
                  child: Center(
                    child: Textbody4(
                      item.title ?? '',
                      textAlign: TextAlign.center,
                      style: Textbody4.defaultStyle.copyWith(
                        fontSize: 20,
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                  right: 0,
                  top: 0,
                  child: Container(
                    padding: const EdgeInsets.all(8),
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                        color: AppColors.colorLight.withOpacity(0.5)),
                    child: InkWell(
                      child: const Icon(
                        Icons.favorite_border,
                        color: AppColors.colorLight,
                      ),
                      onTap: () {
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
              padding: const EdgeInsets.symmetric(
                  horizontal: CommonConstants.kDefaultPadding),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Icon(
                        Icons.visibility,
                        color: AppColors.colorLight.withOpacity(0.7),
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Textlabel3(item.viewCount.toString())
                    ],
                  ),
                  Row(
                    children: [
                      const Icon(
                        Icons.star_rounded,
                        color: Colors.amberAccent,
                      ),
                      const SizedBox(
                        width: 4,
                      ),
                      Textlabel3(item.averageRating.toString())
                    ],
                  )
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 8,
          ),
          Textlabel3(
            item.description,
            maxLines: 1,
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
