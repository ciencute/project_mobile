import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../modules/profile/view/profile_screen.dart';
import '../../styles/label_style/label_text_style.dart';
import '../image_widget/fcore_image.dart';

class SliderlWidget extends StatefulWidget {
  const SliderlWidget({
    required this.items,
    Key? key,
    this.onTapItem,
    this.showIndicator = true,
  }) : super(key: key);

  final List<UIItem> items;
  final Function(int index)? onTapItem;

  final bool showIndicator;

  @override
  _SliderlWidgetState createState() => _SliderlWidgetState();
}

class _SliderlWidgetState extends State<SliderlWidget> {
  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (widget.items.isNotEmpty)
            ? SingleChildScrollView(
              scrollDirection: Axis.horizontal,
                child: Row(
                    children: widget.items.map((item) {
                  return InkWell(
                    child: InkWell(
                      child: Container(
                        padding: const EdgeInsets.only(right: 16),
                        width: (Get.width - 32 - 32) / 3,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            FCoreImage(item.icon ?? ''),
                            const SizedBox(
                              height: 4,
                            ),
                            Textlabel2(item.title)
                          ],
                        ),
                      ),
                    ),
                  );
                }).toList()),
              )
            : promotionsEmptyState,
        const SizedBox(
          height: 8,
        ),
        if (widget.showIndicator)
          (widget.items.isNotEmpty)
              ? Center(
                  child: AnimatedSmoothIndicator(
                    activeIndex: currentIndex.toInt(),
                    count: widget.items.length,
                    effect: const ScrollingDotsEffect(
                      dotColor: Color(0xffD9D9D9),
                      activeDotColor: Color(0xff019748),
                      activeStrokeWidth: 2.6,
                      activeDotScale: 1.3,
                      maxVisibleDots: 5,
                      radius: 8,
                      spacing: 4,
                      dotHeight: 10,
                      dotWidth: 10,
                    ),
                  ),
                )
              : const SizedBox.shrink(),
      ],
    );
  }

  Widget promotionsEmptyState = Center(child: Container());
}
