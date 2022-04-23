part of 'fvt_actors_screen.dart';

extension LstFavoriteActors on FavoriteActorsScreen {
  Widget _item(
      {required ActorsModel actor, required Function(int) onSelected}) {
    return Container(
      width: DEFAULT_WIDTH,
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            flex: 3,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TextHeading2(actor.name),
                const SizedBox(
                  height: 8,
                ),
                Textbody2(actor.slug),
                const SizedBox(
                  height: 8,
                ),
                Textbody2(actor.gender),
                Row(
                  children: [
                    const Icon(
                      Icons.favorite,
                      color: Colors.pink,
                      size: 24.0,
                      semanticLabel: 'Like count:',
                    ),
                    const SizedBox(
                      width: 8,
                    ),
                    Textbody2(actor.favoriteCount.toString()),
                  ],
                ),
                const SizedBox(
                  height: 8,
                ),
                Textbody3(
                  actor.detail,
                  maxLines: 2,
                  textOverflow: TextOverflow.ellipsis,
                  color: Colors.grey,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 12,
          ),
          Expanded(
            flex: 1,
            child: Column(
              children: [
                const CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage(
                    ImageConstants.imageAvatar,
                  ),
                  backgroundColor: Colors.transparent,
                ),
                const SizedBox(
                  height: 12,
                ),
                InkWell(
                  onTap: () => onSelected(actor.id ?? 0),
                  child: Container(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(24),
                      color: AppColors.primaryColorLoading,
                    ),
                    child: Center(
                      child: Textbody1('actor make'),
                    ),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
