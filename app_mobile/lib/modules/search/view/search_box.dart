part of 'search_screen.dart';

extension SearchBox on SearchScreen{
  Widget _searchBox(){
    return                     Container(
                      margin: const EdgeInsets.symmetric(horizontal: 48),
                      padding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 10),
                      decoration: BoxDecoration(
                        color: Colors.transparent,
                        borderRadius: BorderRadius.circular(20),
                        border: Border.all(
                            width: 0.5, color: AppColors.borderTextFieldColor),
                      ),
                      child: GestureDetector(
                        child: Row(
                          children: [
                            Expanded(
                              child: TextField(
                                  autofocus: true,
                                  style: Textbody2.defaultStyle,
                                  cursorColor:
                                      AppColors.secondBackgroundColorLight,
                                  cursorHeight: 20,
                                  decoration: InputDecoration(
                                      // suffix: Padding(
                                      //   padding: const EdgeInsets.all(0),
                                      //   child: Icon(
                                      //     Icons.highlight_off,
                                      //     color: AppColors.iconColorLight
                                      //         .withOpacity(0.3),
                                      //   ),
                                      // ),
                                      contentPadding: const EdgeInsets.all(0),
                                      isCollapsed: true,
                                      hintStyle: Textbody2.defaultStyle
                                          .copyWith(
                                              color: Colors.white
                                                  .withOpacity(0.3)),
                                      hintText: 'Tìm kiếm phim',
                                      border: InputBorder.none),
                                  onTap: () {
                                    // controller.isChange.value = true;
                                  }),
                            ),
                          ],
                        ),
                        onTap: () {
                          // Get.toNamed(Routes.SEARCH);
                          // showSearch(
                          //     context: context,
                          //     delegate: CustomSearch(controller));
                        },
                      ),
                    );
  }
}