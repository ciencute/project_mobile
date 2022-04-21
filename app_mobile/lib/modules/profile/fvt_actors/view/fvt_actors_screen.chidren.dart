part of 'fvt_actors_screen.dart';

extension LstFavoriteActors on FavoriteActorsScreen {
  get actors => [
        '#ActorsName1',
        '#ActorsName2',
        '#ActorsName3',
        '#ActorsName4',
        '#ActorsName5'
      ];

  get movies => ['#Dob: dd/mm/yyyy \n #Weight: kg \n #Height: m #Some infomations....'];

  Widget _lstFvtActors() {
    return SingleChildScrollView(
      child: Column(children: [
        Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                  width: Get.width,
                  child: ListView.separated(
                    physics: const NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    itemCount: 5,
                    itemBuilder: (context, index) {
                      return ExpansionTile(
                        childrenPadding: const EdgeInsets.all(16),
                        subtitle: Text('#Dob: dd/mm/yyyy \n #Weight: kg \n #Height: m \n #Some infomations....',
                        style: Textbody1.defaultStyle.copyWith(color: AppColors.primaryHintColorLight),),
                        trailing: Column(
                          children: const [
                            Text(
                              'Movies',
                              style: Textbody2.defaultStyle,
                            ),
                            Icon(
                              Icons.arrow_drop_down_rounded,
                              color: AppColors.colorLight,
                              size: 25,
                            ),
                          ],
                        ),
                        title: Text(
                          actors[index],
                          style: Textbody3.defaultStyle,
                        ),
                        children: [
                          SizedBox(
                            width: Get.width,
                            height: 170,
                            child: ListView.builder(
                              shrinkWrap: true,
                              scrollDirection: Axis.horizontal,
                              itemBuilder: (context, index) => Row(
                                children: [
                                  Stack(
                                    children: [
                                      Image.asset(
                                          'lib/resource/assets_resources/images/image_app/image_moive1.png',
                                          width: 110,
                                          height: 165),
                                      Positioned.fill(
                                          child: Align(
                                              alignment: Alignment.bottomCenter,
                                              child: Padding(
                                                padding:
                                                    EdgeInsets.only(top: 110),
                                                child: Column(
                                                  crossAxisAlignment:
                                                      CrossAxisAlignment.center,
                                                  children: [
                                                    Textbody1('Episode-#'),
                                                    Expanded(
                                                      child: Textbody2(
                                                        'Action, Crime',
                                                        textAlign:
                                                            TextAlign.center,
                                                        style: const TextStyle(
                                                            color: Color(
                                                                0xffA0A0A0)),
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
                      );
                    },
                    separatorBuilder: (BuildContext context, int index) {
                      return Divider();
                    },
                  ))
            ],
          ),
        ),
      ]),
    );
  }
}
