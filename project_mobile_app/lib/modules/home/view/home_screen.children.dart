part of 'home_screen.dart';

extension _HomeScreenChildren on HomeScreen {
  Widget _genListMovieCard({required List<MovieCardModel> movieCardModels}) {
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List<Widget>.generate(movieCardModels.length,
          (index) => _movieCard(movieCardModels[index])),
    );

    // SingleChildScrollView(
    //   scrollDirection: Axis.horizontal,
    //   child: Row(
    //     children:
    //   ),
    // );
  }

  Widget _movieCard(
    MovieCardModel movieCardModel,
  ) {
    return OpenContainer(
      transitionType: ContainerTransitionType.fade,
      transitionDuration: const Duration(seconds: 1),
      openBuilder: (context, _) => Container(),
      closedElevation: 0,
      closedShape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
          side: const BorderSide(color: Colors.white, width: 1)),
      closedBuilder: (context, _) => Container(
        height: 250,
        width: (DEFAULT_WIDTH / 2) - 16,
        padding: const EdgeInsets.symmetric(
            horizontal: CommonConstants.kDefaultPadding / 2),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Expanded(
              child: FCoreImage(
                movieCardModel.icon,
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(
              height: 12,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(
                  horizontal: CommonConstants.kDefaultPadding / 2),
              child: TextHeading3(
                movieCardModel.title,
                textAlign: TextAlign.center,
                color: Colors.black,
              ),
            ),
            const SizedBox(
              height: 8,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                // FCoreImage(
                //   '',
                //   height: 20,
                //   fit: BoxFit.cover,
                // ),
                const SizedBox(
                  width: 8,
                ),
                TextHeading5(movieCardModel.star.toString())
              ],
            )
          ],
        ),
      ),
    );
  }

  Widget __genFilters({required List<MovieCardModel> movieCardModels}) {
    return ListWheelScrollView(
        itemExtent: 42,
        children: List<Widget>.generate(
          movieCardModels.length,
          (index) => Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: _movieCard(movieCardModels[index]),
          ),
        ));
  }
}

class MovieCardModel {
  final String icon;
  final String title;
  final double star;
  MovieCardModel({required this.icon, required this.title, required this.star});
}
