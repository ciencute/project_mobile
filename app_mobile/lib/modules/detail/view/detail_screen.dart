import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../api/models/ui_item/ui_item.dart';
import '../../../shared/constants/colors.dart';
import '../../../shared/styles/body_style/body_text_style.dart';
import '../../../shared/widgets/appbar/appbar.dart';
import '../../../shared/widgets/image_widget/fcore_image.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';
import '../../video/view/video_screen.dart';
import '../cubit/detail_cubit.dart';

part 'detail_screen.children.dart';

class DetailScreen extends StatefulWidget {
  final int id;
  const DetailScreen({Key? key, required this.id}) : super(key: key);

  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  late DetailCubit _cubit;

  @override
  void initState() {
    super.initState();

    _cubit = DetailCubit(movieAppRepository: Get.find());
    _cubit.getDetailMovie(id: widget.id);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbar(context, title: 'Detail'),
      backgroundColor: AppColors.gradient2BackgroundColor,
      body: SingleChildScrollView(
          child: BlocBuilder<DetailCubit, DetailState>(
              bloc: _cubit,
              builder: (context, state) {
                if (state.loadStatus == LoadStatus.loading) {
                  return LoadingCommon().loadingWidget();
                }
                if (state.uiItem == null) {
                  Center(
                    child: Textbody1('Không tải được dữ liệu'),
                  );
                }

                return Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    widget._movieInfo(model: state.uiItem ?? UIItem()),
                    const SizedBox(
                      height: 16,
                    ),
                    widget._movieRelated(model: state.uiItem ?? UIItem())
                  ],
                );
              })),
    );
  }
}
