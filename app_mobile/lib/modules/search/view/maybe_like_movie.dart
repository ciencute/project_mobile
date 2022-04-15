part of 'search_screen.dart';

extension MaybeYouLikeMovie on SearchScreen {
  Widget _maybeYouLike() {
    return Container(
      width: Get.width,
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 16),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              const Text(
                'Có thể bạn thích',
                style: Textbody3.defaultStyle,
              ),
              Row(
                children: [
                  Text(
                    'Xem tất cả',
                    style: Textbody1.defaultStyle
                        .copyWith(color: AppColors.accentColorLight),
                  ),
                  GestureDetector(
                      child: const Icon(
                    Icons.keyboard_arrow_right_rounded,
                    size: 25,
                    color: AppColors.accentColorLight,
                  ))
                ],
              ),
            ],
          ),
          const SizedBox(
            height: 10,
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Padding(
              padding:
                  const EdgeInsets.only(left: CommonConstants.kDefaultPadding),
              child: Row(
                  children: List.generate(5, (index) {
                return InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: CommonConstants.kDefaultPadding),
                    width: (Get.width - 64) / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: FCoreImage(
                            ImageConstants.imageMovie1,
                            height: 180,
                            width: DEFAULT_WIDTH,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Textlabel2(
                          'Phim bạn thích',
                          textAlign: TextAlign.center,
                        )
                      ],
                    ),
                  ),
                    onTap: (){
                    Get.toNamed(Routes.DETAIL);
                  },
                );
              })),
            ),
          )
        ],
      ),
    );
  }
}
