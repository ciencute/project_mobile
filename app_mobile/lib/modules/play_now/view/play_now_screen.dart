import 'package:app_mobile/api/models/ui_item/ui_item.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:get/get.dart';

import '../../../api/models/enums/load_status.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/widgets/item_movie/item_movie_widget.dart';
import '../../../shared/widgets/loading_indicator/loading_indicator.dart';
import '../../detail/view/detail_screen.dart';
import '../cubit/play_now_cubit.dart';

class PlayNowScreen extends StatefulWidget {
  const PlayNowScreen({Key? key}) : super(key: key);

  @override
  State<PlayNowScreen> createState() => _PlayNowScreenState();
}

class _PlayNowScreenState extends State<PlayNowScreen>
    with AutomaticKeepAliveClientMixin {
  late PlayNowCubit _cubit;

  final _scrollController = ScrollController();
  final _scrollThreshold = 200.0;

  @override
  void initState() {
    super.initState();

    _cubit = PlayNowCubit(movieAppRepository: Get.find());

    _cubit.getDataLoadmore();
    _scrollController.addListener(_onScroll);
  }

  @override
  void dispose() {
    _cubit.close();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return BlocBuilder<PlayNowCubit, PlayNowState>(
        bloc: _cubit,
        builder: (context, state) {
          List<UIItem> lstUiItem = [];
          if (state.loadStatus == LoadStatus.loading) {
            return Container(
                alignment: Alignment.center,
                child: LoadingCommon().loadingWidget());
          } else if (state.lstUiItem.isNotEmpty) {
            lstUiItem.addAll(state.lstUiItem);
          }
          bool isLoadMore = state.loadStatus == LoadStatus.loadingMore;
          if (lstUiItem.isEmpty) {
            const Center(
              child: Text('Chưa có phim nào!'),
            );
          }
          return GridView.builder(
            controller: _scrollController,
            itemCount: isLoadMore ? (lstUiItem.length + 1) : lstUiItem.length,
            physics: const ScrollPhysics(),
            gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              crossAxisSpacing: 16,
              mainAxisSpacing: 16,
              mainAxisExtent: 300,
            ),
            itemBuilder: (context, index) {
              if (index < lstUiItem.length) {
                return InkWell(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                            builder: (context) => DetailScreen(
                                  id: lstUiItem[index].id ?? 0,
                                )),
                      );
                    },
                    child: ItemMovieWidget(item: lstUiItem[index]));
              } else {
                return LoadingCommon().loadMoreItem();
              }
            },
          );
        });
  }

  void _onScroll() async {
    final maxScroll = _scrollController.position.maxScrollExtent;
    final currentScroll = _scrollController.position.pixels;
    if (maxScroll - currentScroll <= _scrollThreshold) {
      _cubit.fetchMoreData();
    }
  }

  @override
  bool get wantKeepAlive => true;
}
