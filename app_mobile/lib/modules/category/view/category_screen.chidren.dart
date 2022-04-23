part of 'category_screen.dart';

extension _CategoryScreenChildren on CategoryScreen {
  Widget _cardWidget() {
    List data = [
      {"color": const Color(0xffff6968)},
      {"color": const Color.fromARGB(255, 28, 204, 116)},
      {"color": const Color(0xffff8f61)},
      {"color": const Color(0xff2ac3ff)},
      {"color": const Color.fromARGB(255, 168, 79, 209)},
      {"color": const Color(0xff96da45)},
      {"color": const Color(0xffff6968)},
      {"color": const Color(0xff7a54ff)},
      {"color": const Color(0xffff8f61)},
      {"color": const Color(0xff2ac3ff)},
      {"color": const Color(0xff5a65ff)},
      {"color": const Color(0xff96da45)},
    ];
    List movies = ['#1', '#2', '#3', '#4', '#5', '#6', '#7', '#8', '#9', '#10'];

    return Column(children: [
      const SizedBox(
        height: 16,
      ),
      MasonryGridView.count(
          crossAxisSpacing: 16,
          mainAxisSpacing: 16,
          crossAxisCount: 2,
          itemBuilder: (context, index) {
            return Container(
              width: (index % 5 + 1) * 100,
              padding:
                  const EdgeInsets.all(CommonConstants.kDefaultPadding / 2),
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
                          width: Get.width,
                          height: 200,
                          color: data[index]['color'],
                          child: Center(
                            child: Text(
                              movies[index],
                              style:
                                  Textbody4.defaultStyle.copyWith(fontSize: 50),
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
                          Icon(
                            Icons.info_outline_rounded,
                            color: AppColors.colorLight.withOpacity(0.7),
                          ),
                          Icon(
                            Icons.more_vert,
                            color: AppColors.colorLight.withOpacity(0.7),
                          )
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Textlabel3('Phim chất lượng cao'),
                ],
              ),
            );
          }),
      const SizedBox(
        height: 20,
      ),
    ]);
  }
}
