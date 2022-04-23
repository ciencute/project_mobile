part of 'home_screen.dart';

extension _HomeScreenChildren on HomeScreen {
  Widget _headerPage(
      {required String name,
      required String description,
      required String avatar}) {
    return Container(
      padding: const EdgeInsets.symmetric(
          vertical: CommonConstants.kDefaultPadding,
          horizontal: CommonConstants.kDefaultPadding),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextHeading1(
                'Hello $name ',
                color: AppColors.primaryTextColorLight,
              ),
              const SizedBox(
                height: 8,
              ),
              Textlabel2(
                description,
                color: AppColors.fifthTextColorLight,
              )
            ],
          ),
          CircleAvatar(
            radius: 50.0,
            backgroundImage: AssetImage(
              avatar,
            ),
            backgroundColor: Colors.transparent,
          )
        ],
      ),
    );
  }

  Widget _typeAction(
      {required List<UIItem> typeActions,
      required BuildContext context,
      required Function(int) onConfirm}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(typeActions.length, (index) {
          return InkWell(
            onTap: () => onConfirm(index),
            child: Container(
              margin:
                  const EdgeInsets.only(right: CommonConstants.kDefaultPadding),
              width: (Get.width - 64) / 4,
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  FCoreImage(
                    typeActions[index].img ?? '',
                    height: 55,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(
                    height: 8,
                  ),
                  Textlabel2(
                    typeActions[index].title,
                    textAlign: TextAlign.center,
                  )
                ],
              ),
            ),
          );
        }),
      ),
    );
  }

  Widget _research() {
    return InkWell(
      child: Container(
        margin: const EdgeInsets.symmetric(
          horizontal: CommonConstants.kDefaultPadding,
        ),
        padding: const EdgeInsets.symmetric(
            horizontal: CommonConstants.kDefaultPadding,
            vertical: CommonConstants.kDefaultPadding - 6),
        decoration: BoxDecoration(
            color: Colors.black.withOpacity(0.3),
            border: Border.all(width: 1, color: Colors.white.withOpacity(0.4)),
            borderRadius: BorderRadius.circular(20)),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Row(
              children: [
                const FCoreImage(
                  IconConstants.iconSearch,
                  width: 21,
                  height: 21,
                ),
                const SizedBox(width: 12),
                Text(
                  'Search',
                  style: TextStyleApp().text14500G2(),
                )
              ],
            ),
            const SizedBox()
          ],
        ),
      ),
      onTap: () {
        Get.toNamed(Routes.SEARCH);
      },
    );
  }

  Widget _lstMovie(
      {required List<UIItem> lstMovies, required Function(int) onConfirm}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: CommonConstants.kDefaultPadding),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: List.generate(lstMovies.length, (index) {
              return InkWell(
                  child: Container(
                    margin: const EdgeInsets.only(
                        right: CommonConstants.kDefaultPadding),
                    width: (Get.width - 64) / 3,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(8),
                          child: FCoreImage(
                            lstMovies[index].img ?? '',
                            height: 180,
                            fit: BoxFit.cover,
                          ),
                        ),
                        const SizedBox(
                          height: 4,
                        ),
                        Textlabel2(
                          lstMovies[index].title,
                          textAlign: TextAlign.center,
                          textOverflow: TextOverflow.ellipsis,
                        )
                      ],
                    ),
                  ),
                  onTap: () => onConfirm(index));
            })),
      ),
    );
  }
}

class MovieCardModel {
  final String icon;
  final String title;
  final double star;

  MovieCardModel({required this.icon, required this.title, required this.star});
}

class Bihavior {
  final String action;
  final String data;
  Bihavior({required this.action, required this.data});
}
