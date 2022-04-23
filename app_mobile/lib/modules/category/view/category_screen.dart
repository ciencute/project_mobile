import 'package:app_mobile/shared/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/styles/body_style/body_text_style.dart';
import '../../../shared/styles/label_style/label_text_style.dart';

part 'category_screen.chidren.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);
  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
            backgroundColor: AppColors.gradient2BackgroundColor,
            elevation: 0.2,
            leading: IconButton(
              icon: const Icon(
                Icons.arrow_back_ios_rounded,
                color: Color(0xffffffff),
              ),
              iconSize: 25,
              onPressed: () {
                Get.back();
              },
            )),
        body: Container(
          height: Get.height,
          decoration: const BoxDecoration(
              gradient: LinearGradient(
                  tileMode: TileMode.clamp,
                  stops: [0.4, 1.0],
                  begin: Alignment.bottomLeft,
                  end: Alignment.topLeft,
                  colors: [
                    AppColors.gradient1BackgroundColor,
                    AppColors.gradient2BackgroundColor
                  ])),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  height: 50,
                  child: Textbody4(
                    'Favorite Movies'.toUpperCase(),
                    style: Textbody4.defaultStyle.copyWith(
                      fontWeight: FontWeight.bold,
                      fontSize: 24,
                    ),
                  ),
                ),
              ),
              Container(
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Colors.transparent),
                child: TabBar(
                    isScrollable: true,
                    indicatorPadding: const EdgeInsets.all(10),
                    labelColor: Colors.transparent,
                    unselectedLabelColor: AppColors.gradient1BackgroundColor,
                    labelStyle: const TextStyle(fontSize: 20),
                    labelPadding: const EdgeInsets.only(
                        left: 40, right: 40, top: 10, bottom: 10),
                    padding: const EdgeInsets.symmetric(
                        vertical: 5,
                        horizontal: CommonConstants.kDefaultPadding),
                    indicator: BoxDecoration(
                        color: AppColors.colorLight,
                        borderRadius: BorderRadius.circular(5)),
                    controller: _tabController,
                    tabs: [
                      Text(
                        'DAY',
                        style: Textbody2.defaultStyle.copyWith(
                            color: Colors.cyan.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'WEEK',
                        style: Textbody2.defaultStyle.copyWith(
                            color: Colors.cyan.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                      Text(
                        'MONTH',
                        style: Textbody2.defaultStyle.copyWith(
                            color: Colors.cyan.shade700,
                            fontWeight: FontWeight.bold),
                      ),
                    ]),
              ),
              Expanded(
                child: TabBarView(controller: _tabController, children: [
                  widget._cardWidget(),
                  widget._cardWidget(),
                  widget._cardWidget(),
                ]),
              )
            ],
          ),
        ));
  }
}
