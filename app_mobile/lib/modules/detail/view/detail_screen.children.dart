// ignore_for_file: prefer_const_literals_to_create_immutables

part of 'detail_screen.dart';

extension _DetailScreenChildren on DetailScreen {
  Widget _movieInfo({required UIItem model}) {
    return Column(
      children: [
        Stack(
          children: [
            SizedBox(
              height: Get.height * 0.45,
              child: SizedBox(
                width: Get.width,
                child: ClipRRect(
                    borderRadius: const BorderRadius.only(
                        bottomLeft: Radius.circular(30),
                        bottomRight: Radius.circular(30)),
                    child: FCoreImage(
                      model.img ?? '',
                      fit: BoxFit.cover,
                    )),
              ),
            ),
            Positioned(
                top: 0,
                right: 0 ,
                child: Container(
                  width: 50,
                  height: 50,
                 decoration: BoxDecoration(
                 color: AppColors.colorLight.withOpacity(0.5),
                 borderRadius: BorderRadius.circular(50)

                 ),
                  child:  Center(
                    child: Shimmer.fromColors(
    baseColor: AppColors.gradient2BackgroundColor,
    highlightColor: AppColors.colorLight,
    child: const Icon(Icons.favorite_border,size: 35,),
  ),
                  ),
                ))
          ],
        ),
        const SizedBox(
          height: 16,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Stack(
              children: [
                Container(
                  width: 60,
                  height: 60,
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(50),
                      color: Colors.white),
                ),
                Positioned.fill(
                    child: InkWell(
                  onTap: () {
                    Get.to(VideoScreen(
                      title: model.title ?? '',
                      videoUrl: model.url ?? '',
                    ));
                  },
                  child: const Align(
                    alignment: Alignment.center,
                    child: Icon(
                      Icons.play_circle,
                      color: Color(0xffFF3B30),
                      size: 60,
                    ),
                  ),
                ))
              ],
            ),
            const SizedBox(
              height: 5,
            ),
            Textbody3(
              model.title,
              style: const TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.w600,
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Textbody2(
                  model.publishedAt,
                  style: const TextStyle(color: Color(0xffA0A0A0)),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.black.withOpacity(0.5),
                  margin: const EdgeInsets.symmetric(horizontal: 5),
                ),
                Textbody2(
                  model.slug ?? '',
                  color: Color(0xffA0A0A0),
                ),
                Container(
                  width: 1,
                  height: 20,
                  color: Colors.black.withOpacity(0.5),
                  margin: EdgeInsets.symmetric(horizontal: 5),
                ),
                Textbody2(
                  'Episode - ' + model.totalEpisode.toString(),
                  color: Color(0xffA0A0A0),
                ),
              ],
            ),
            Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    5,
                    (i) => Icon(
                          Icons.star,
                          color: 4 > i
                              ? AppColors.colorYellow
                              : AppColors.fifthTextColorLight,
                          size: 30.0,
                        ))),
            SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: AppColors.colorYellow,
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
                  child: Container(
                    color: Colors.black,
                    padding: const EdgeInsets.all(3),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        const Text(
                          'IMDB ',
                          style: Textbody2.defaultStyle,
                        ),
                        Container(
                            padding: const EdgeInsets.symmetric(horizontal: 2),
                            decoration: BoxDecoration(
                                color: AppColors.colorYellow,
                                borderRadius: BorderRadius.circular(5)),
                            child: Text(model.imdb.toString(),
                                style: Textbody2.defaultStyle
                                    .copyWith(color: Colors.black)))
                      ],
                    ),
                  ),
                ),
                const SizedBox(
                  width: 16,
                ),
                Container(
                  decoration: BoxDecoration(
                      gradient: const LinearGradient(
                          tileMode: TileMode.clamp,
                          begin: Alignment.bottomCenter,
                          end: Alignment.topRight,
                          colors: [
                            AppColors.colorLight,
                            AppColors.gradient2BackgroundColor,
                          ]),
                      borderRadius: BorderRadius.circular(5)),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 8, vertical: 2),
                  child: Container(
                    child: Container(
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(model.quality ?? '',
                            style: Textbody1.defaultStyle
                                .copyWith(color: Colors.black))),
                  ),
                ),
              ],
            )
          ],
        ),
      ],
    );
  }

  Widget _movieRelated({required UIItem model}) {
    return Column(
      children: [
        Container(
          margin: EdgeInsets.only(left: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Related Movies',
                      style: Textbody1.defaultStyle
                          .copyWith(fontSize: 18, fontWeight: FontWeight.w500),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Container(
                      width: Get.width,
                      height: 170,
                      child: ListView.builder(
                        shrinkWrap: true,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (context, index) => Row(
                          children: [
                            Stack(
                              children: [
                                Container(
                                  // child: FCoreImage(model.img??'',fit: BoxFit.cover,)

                                  child: Image.asset(
                                      'lib/resource/assets_resources/images/image_app/image_moive1.png',
                                      width: 110,
                                      height: 165),
                                ),
                                Positioned.fill(
                                    child: Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                          padding: EdgeInsets.only(top: 110),
                                          child: Column(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.center,
                                            children: [
                                              Textbody1('Episode-#'),
                                              Expanded(
                                                child: Textbody2(
                                                  'Action, Crime',
                                                  textAlign: TextAlign.center,
                                                  style: TextStyle(
                                                      color: Color(0xffA0A0A0)),
                                                ),
                                              ),
                                            ],
                                          ),
                                        )))
                              ],
                            ),
                            SizedBox(
                              width: 30,
                            )
                          ],
                        ),
                        itemCount: 5,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: 25,
              ),
              Text(
                'About movie',
                style: Textbody1.defaultStyle
                    .copyWith(fontSize: 18, fontWeight: FontWeight.w700),
              ),
              Padding(
                padding: EdgeInsets.only(right: 29, bottom: 32, top: 4),
                child: Text(
                  model.description ?? '',
                  style: Textbody1.defaultStyle.copyWith(
                      color: Color(0xffA0A0A0),
                      fontSize: 14,
                      fontWeight: FontWeight.w500),
                ),
              ),
            ],
          ),
        ),

      ],
    );
  }
}
