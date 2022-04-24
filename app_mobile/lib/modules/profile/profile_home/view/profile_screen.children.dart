part of 'profile_screen.dart';

extension _DetailScreenChildren on ProfileScreen {
  Widget _profilePic() {
    return SizedBox(
      height: 115,
      width: 115,
      child: Stack(
        fit: StackFit.expand,
        clipBehavior: Clip.none,
        children: [
          const CircleAvatar(
            backgroundColor: Colors.white,
            radius: 60,
            child: CircleAvatar(
              radius: 55,
              backgroundImage: AssetImage(ImageConstants.imageAvatar),
            ),
          ),
          Positioned(
            right: -12,
            bottom: 0,
            child: SizedBox(
              height: 35,
              width: 35,
              child: TextButton(
                style: TextButton.styleFrom(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(50),
                    side: BorderSide(color: Colors.white.withOpacity(0.5)),
                  ),
                  primary: Colors.white,
                  backgroundColor: Colors.white.withOpacity(0.5),
                ),
                onPressed: () {},
                child: const FCoreImage(
                  IconConstants.iconCamera,
                  color: Colors.white,
                  width: 16,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }

  Widget _profileMenu({
    required ProfileMenu item,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(
          horizontal: CommonConstants.kDefaultPadding),
      child: Container(
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(12),
            color: AppColors.fifthTextColorLight.withOpacity(0.2)),
        padding: const EdgeInsets.all(16),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FCoreImage(
              item.icon,
              width: 25,
              color: Colors.white,
            ),
            const SizedBox(width: 20),
            Expanded(child: Textlabel2(item.text)),
            const Icon(Icons.keyboard_arrow_right_rounded, color: Colors.white),
          ],
        ),
      ),
    );
  }
}

class ProfileMenu {
  final String icon;
  final String text;
  ProfileMenu({required this.icon, required this.text});
}

class InfoUser {
  final File profilePicFile;
  final int commnet;
  final int followAuthor;
  final int favorite;
  final String description;
  final String avatar;
  final List<UIItem> lstWatched;
  final List<UIItem> lstFavorite;
  final List<UIItem> lstAuthor;
  InfoUser(
      {required this.commnet,
      required this.followAuthor,
      required this.favorite,
      required this.description,
      required this.avatar,
      required this.lstWatched,
      required this.lstFavorite,
      required this.lstAuthor,
      required this.profilePicFile});
}

// class UIItem {
//   String? id;
//   String? title;
//   String? icon;
//   String? description;
//   UIItem(
//       {required this.id,
//       required this.title,
//       required this.icon,
//       required this.description});
// }

class Author {
  final String id;
  final String name;
  final UIItem info;
  Author({required this.id, required this.name, required this.info});
}
