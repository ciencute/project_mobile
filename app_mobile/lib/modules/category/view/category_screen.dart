import 'package:app_mobile/api/models/home/home_identity.dart';
import 'package:app_mobile/modules/category/cubit/category_cubit.dart';
import 'package:app_mobile/shared/constants/common.dart';
import 'package:app_mobile/shared/widgets/tabs/custom_tab.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
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
  late CategoryCubit _cubit;

  @override
  void initState() {
    _tabController = TabController(length: 3, vsync: this, initialIndex: 0)
      ..addListener(() {});

    _cubit.getCategories();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: BlocBuilder<CategoryCubit, CategoryState>(
        bloc: _cubit,
        builder: (context, state) {
          return Column(
            children: [
              const SizedBox(
                height: 50,
              ),
              CustomTab(
                  items:
                      state.lstUiItem?.map((e) => e.name ?? '').toList() ?? []),
            ],
          );
        },
      ),
    );
  }
}
