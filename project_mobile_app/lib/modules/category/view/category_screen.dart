import 'package:expandable_page_view/expandable_page_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../resource/assets_constant/images_constants.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/styles/label_style/label_text_style.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/tabs/custom_tab.dart';
import '../cubit/category_cubit.dart';

part 'category_screen.chidren.dart';

class CategoryScreen extends StatefulWidget {
  const CategoryScreen({Key? key}) : super(key: key);

  @override
  State<CategoryScreen> createState() => _CategoryScreenState();
}

class _CategoryScreenState extends State<CategoryScreen> {
  late CategoryCubit _cubit;
  final pageController = PageController();
  @override
  void initState() {
    super.initState();
    _cubit = CategoryCubit();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CategoryCubit, CategoryState>(
      builder: (_, state) {
        return Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              const SizedBox(
                height: 32,
              ),
              widget._horizontalTabs(onSelected: (value) {
                _cubit.changePage(value);
              }),
              Expanded(
                child: SingleChildScrollView(
                  child: widget._listItemType(onSelectedTab: (value) {
                    _cubit.changePage(value);
                  }),
                ),
              )
            ],
          ),
        );
      },
      bloc: _cubit,
    );
  }
}
