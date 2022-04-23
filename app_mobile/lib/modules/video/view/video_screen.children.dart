part of 'video_screen.dart';

extension _VideoScreenChildren on VideoScreen {
  Widget _lstEpisodes(
      {required List<EpisodesModel> lstEpisodes,
      required Function(String url) urlNew}) {
    return ListView.separated(
        itemBuilder: (_, index) {
          return InkWell(
            onTap: () => urlNew(lstEpisodes[index].url ?? ''),
            child: Container(
              padding: const EdgeInsets.all(12),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(16),
                boxShadow: [
                  BoxShadow(
                    color: Colors.grey.withOpacity(0.3),
                    spreadRadius: 2,
                    blurRadius: 2,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Icon(
                    Icons.play_circle,
                    color: Colors.green,
                    size: 40.0,
                  ),
                  const SizedBox(
                    width: 16,
                  ),
                  Expanded(
                      child: Column(
                    children: [
                      Textlabel1(
                        lstEpisodes[index].name,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Textlabel3(
                        lstEpisodes[index].createdAt,
                        maxLines: 1,
                      ),
                      const SizedBox(
                        height: 4,
                      ),
                      Textlabel3(
                        lstEpisodes[index].updatedAt,
                        maxLines: 1,
                      ),
                    ],
                  ))
                ],
              ),
            ),
          );
        },
        separatorBuilder: (_, index) => const Divider(),
        itemCount: lstEpisodes.length);
  }
}
