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
            radius: 30.0,
            backgroundImage: AssetImage(avatar),
            backgroundColor: Colors.transparent,
          )
        ],
      ),
    );
  }

  Widget _typeAction({required List<UIItem> typeActions}) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: List.generate(typeActions.length, (index) {
          return Container(
            margin:
                const EdgeInsets.only(right: CommonConstants.kDefaultPadding),
            width: (Get.width - 64) / 4,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                FCoreImage(
                  typeActions[index].icon ?? '',
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
          );
        }),
      ),
    );
  }

  Widget _research() {
    return Container(
      margin: const EdgeInsets.symmetric(
        horizontal: CommonConstants.kDefaultPadding,
      ),
      padding: const EdgeInsets.symmetric(
          horizontal: CommonConstants.kDefaultPadding,
          vertical: CommonConstants.kDefaultPadding),
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
    );
  }
Widget _lstMovie({required List<UIItem> lstMovies}){
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding: const EdgeInsets.only(left: CommonConstants.kDefaultPadding),
        child: Row(
          children:List.generate(lstMovies.length, (index){
            return Container(
            margin:
                const EdgeInsets.only(right: CommonConstants.kDefaultPadding),
            width: (Get.width - 64) / 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: FCoreImage(
                    lstMovies[index].icon ?? '',
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
                )
              ],
            ),
          );
          })
          ),
      ),
      
    );
}


  Widget _listMovieHot({required List<UIItem> lstMovies}) {
    final customLayoutOption =
        CustomLayoutOption(startIndex: -1, stateCount: 3);
    customLayoutOption.addRotate([-45.0 / 180, 0.0, 45.0 / 180]);
    customLayoutOption.addTranslate([
      const Offset(-180.0, -20.0),
      const Offset(0.0, 0.0),
      const Offset(180.0, -20.0)
    ]);
    return Swiper(
      layout: SwiperLayout.CUSTOM,
      customLayoutOption: customLayoutOption,
      itemWidth: Get.width  / 3,
      itemHeight: 300,
      itemBuilder: (context, index) {
        return Column(
          children: [
            FCoreImage(
              lstMovies[index].icon ?? '',
              height: 200,
              width: Get.width  / 3,
              fit: BoxFit.cover,
            ),
            const SizedBox(
              height: 8,
            ),
            Textlabel2(lstMovies[index].title)
          ],
        );
      },
      itemCount: lstMovies.length,
    );
  }
}

class MovieCardModel {
  final String icon;
  final String title;
  final double star;

  MovieCardModel({required this.icon, required this.title, required this.star});
}

class UIItem {
  String? id;
  String? title;
  String? icon;
  String? description;
  final Bihavior bihavior;
  UIItem(
      {required this.id,
      required this.title,
      required this.icon,
      required this.description,
      required this.bihavior});
}

class Bihavior {
  final String action;
  final String data;
  Bihavior({required this.action, required this.data});
}
