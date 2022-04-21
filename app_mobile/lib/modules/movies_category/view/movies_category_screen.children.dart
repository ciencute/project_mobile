part of 'movies_category_screen.dart';

extension _MoviesCategoryScreenChildren on MoviesCategoryScreen {
  Widget _itemMovie({required UIItem movie}) {
    return Container(
      padding: const EdgeInsets.all(CommonConstants.kDefaultPadding - 4),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FCoreImage(
                movie.img ?? ImageConstants.imageMovie1,
                width: 150,
                height: 170,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              width: 12,
            ),
            Expanded(
              child: SizedBox(
                height: 170,
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Textlabel1(movie.title),
                    const SizedBox(
                      height: 12,
                    ),
                    Textlabel3(
                      movie.description,
                      color: AppColors.fifthTextColorLight,
                      maxLines: 5,
                      textOverflow: TextOverflow.ellipsis,
                    )
                  ],
                ),
              ),
            )
          ]),
    );
  }
}
