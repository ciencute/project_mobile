part of 'movies_top10_screen.dart';

extension _MoviesTop10ScreenChildren on MoviesTop10Screen {
  Widget _moviesTopScreen({required UIItem uiItem}) {
    return Container(
      padding: const EdgeInsets.all(CommonConstants.kDefaultPadding - 4),
      child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(12),
              child: FCoreImage(
                uiItem.img ?? ImageConstants.imageMovie1,
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
                    Textlabel1(uiItem.title),
                    const SizedBox(
                      height: 12,
                    ),
                    Textlabel3(
                      uiItem.quality,
                      color: AppColors.colorLight,
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
