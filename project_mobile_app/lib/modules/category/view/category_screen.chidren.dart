part of 'category_screen.dart';

extension _CategoryScreenChildren on CategoryScreen {
    Widget _horizontalTabs({
      required Function(int) onSelected
    }) {
    return CustomTab(

      items: const [
        'Phim hành động',
        'Phim kinh dị',
        'Phim tình cảm',
      ],
      onTabChanged: (value){
onSelected(value);
      },
      itemSpace: 8,
      activeItemDecoration: BoxDecoration(
        borderRadius: BorderRadius.circular(18),
        color: AppColors.contractInfoColor.withOpacity(0.3),
      ),
    );
  }

  Widget _listItemType({
     required Function(int) onSelectedTab
  }) {
    return ExpandablePageView(
      onPageChanged: (value){
        onSelectedTab(value);
      },
      
      physics: const NeverScrollableScrollPhysics(),
     
      children: [
        _dataTabView(),
        _dataTabView2(),
        _dataTabView(),
      ],
    );
  }
  Widget _dataTabView(){
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(10, (index){
        return Container(
          width: (DEFAULT_WIDTH - 32 - 16) / 2,
          padding: const EdgeInsets.all(8),

          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FCoreImage(ImageConstants.imageMovie1,
                height: 180,
                width: DEFAULT_WIDTH,
                 fit: BoxFit.fitWidth,
                
                
                ),
              ),
              const SizedBox(height: 8,),
              Textlabel3('Phim chất lượng cao'),
            ],
          ),
        );
      }),
    );
  }
    Widget _dataTabView2(){
    return Wrap(
      spacing: 16,
      runSpacing: 16,
      children: List.generate(10, (index){
        return Container(
          width: (DEFAULT_WIDTH - 32 - 16) / 2,
          padding: const EdgeInsets.all(8),

          child: Column(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: FCoreImage(ImageConstants.imageAvatar,
                height: 100,
                fit: BoxFit.fitWidth,
                
                
                ),
              ),
              const SizedBox(height: 8,),
              Textlabel3('Phim chất lượng cao'),
            ],
          ),
        );
      }),
    );
  }
}

