import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../api/models/home/home_identity.dart';
import '../../constants/colors.dart';
import '../image_widget/fcore_image.dart';

class CarouselWidget extends StatefulWidget {
  const CarouselWidget({
    required this.items,
    Key? key,
    this.aspectRatio = 2.0,
    this.showLabel = false,
    this.onTapItem,
    this.leading,
  
    this.decoration,
    this.showIndicator = true,
  }) : super(key: key);
  final double aspectRatio;
  final List<SliderModel> items;
  final Function(int index)? onTapItem;
  final Widget? leading;
  final bool showLabel;
  
  final BoxDecoration? decoration;
  final bool showIndicator;

  @override
  _CarouselWidgetState createState() => _CarouselWidgetState();
}

class _CarouselWidgetState extends State<CarouselWidget> {
  double currentIndex = 0;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        (widget.items.isNotEmpty)
            ? CarouselSlider(
                items: List.generate(
                  widget.items.length,
                  (index) {
                    return Padding(
                      padding: const EdgeInsets.only(bottom: 8),
                      child: Container(
                        decoration: widget.decoration,
                        child: ClipRRect(
                          borderRadius:
                              BorderRadius.circular(16),
                          child: FCoreImage(
                            widget.items[index].imageUrl ?? '',
                            fit: BoxFit.cover,
                            width: Get.width,
                          ),
                        ),
                      ),
                    );
                  },
                ),
                options: CarouselOptions(
                  //viewportFraction: 1.9,
                  aspectRatio: widget.aspectRatio,
                  enlargeCenterPage: true,
                  scrollDirection: Axis.horizontal,
                  autoPlay: true,
                  onPageChanged: (index, _) {
                    setState(() {
                      currentIndex = index.toDouble();
                    });
                  },
                ),
              )
            : promotionsEmptyState,
        if (widget.showIndicator)
          Center(
            child: AnimatedSmoothIndicator(
              activeIndex: currentIndex.toInt(),
              count: widget.items.length,
              effect: JumpingDotEffect(
                spacing: 6,
                dotColor: const Color(0xffD9D9D9),
                activeDotColor: AppColors.primaryColorLight.withOpacity(0.5),
                dotHeight: 8,
                dotWidth: 8,
                jumpScale: 1.7,
                verticalOffset: 8,
              ),
            ),
          )
      ],
    );
  }

  Widget promotionsEmptyState = const Text('Empty');
}
