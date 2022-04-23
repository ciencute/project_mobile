import 'package:app_mobile/resource/assets_constant/icon_constants.dart';
import 'package:app_mobile/resource/assets_constant/images_constants.dart';
import 'package:app_mobile/shared/constants/common.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import 'package:app_mobile/shared/constants/colors.dart';

import '../../../../api/models/actors/actors_identity.dart';
import '../../../../api/models/enums/load_status.dart';
import '../../../../routes/app_pages.dart';
import '../../../../shared/styles/body_style/body_text_style.dart';
import '../../../../shared/styles/heading_style/heading_text_style.dart';
import '../../../../shared/widgets/loading_indicator/loading_indicator.dart';
import '../../../movies_by_actor/view/movies_by_actor_screen.dart';
import '../cubit/fvt_actors_cubit.dart';
import '../state/fvt_actors_state.dart';

part 'fvt_actors_screen.chidren.dart';

class FavoriteActorsScreen extends StatefulWidget {
  const FavoriteActorsScreen({Key? key}) : super(key: key);

  @override
  _FavoriteActorsScreenState createState() => _FavoriteActorsScreenState();
}

class _FavoriteActorsScreenState extends State<FavoriteActorsScreen> {
  late FavoriteActorsCubit _cubit;

  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;
  @override
  void initState() {
    super.initState();
    _cubit = FavoriteActorsCubit(movieAppRepository: Get.find());

    _cubit.getDataLoadmore(id: 12);
    _scrollController.addListener(_onScroll);
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
            child: BlocBuilder<FavoriteActorsCubit, FavariteActorsState>(
                bloc: _cubit,
                builder: (context, state) {
                  List<ActorsModel> lstUiItem = [];
                  if (state.loadStatus == LoadStatus.loading) {
                    return LoadingCommon().loadingWidget();
                  } else if (state.lstUiItem.isNotEmpty) {
                    lstUiItem.addAll(state.lstUiItem);
                  }
                  bool isLoadMore = state.loadStatus == LoadStatus.loadingMore;
                  if (lstUiItem.isEmpty) {
                    const Center(
                      child: Text('Chưa có diễn viên yêu thích nào!'),
                    );
                  }

                  return ListView.separated(
                      controller: _scrollController,
                      itemBuilder: (context, index) {
                        if (index < lstUiItem.length) {
                          return widget._item(
                              actor: lstUiItem[index],
                              onSelected: (value) {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                      builder: (context) => MoviesByActor(
                                            id: value,
                                          )),
                                );
                              });
                        } else {
                          return LoadingCommon().loadMoreItem();
                        }
                      },
                      separatorBuilder: (context, index) => Container(
                            color: Colors.grey,
                            height: 0.5,
                          ),
                      itemCount: isLoadMore
                          ? (lstUiItem.length + 1)
                          : lstUiItem.length);
                })));
  }

  void _onScroll() async {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _cubit.fetchMoreData(id: 12);
    }
  }
}
