import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:project_mobile_app/base/base_cubit.dart';
import 'package:project_mobile_app/modules/home/view/home_screen.dart';
import 'package:project_mobile_app/resource/assets_constant/images_constants.dart';
import '../../../api/models/enums/load_status.dart';
part '../state/home_state.dart';

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeState());
 
  List<MovieCardModel> lstImage (){
    final items = <MovieCardModel>[];
    final item = MovieCardModel(
      icon: ImageConstants.imageMovie1,
      star: 5,
      title: 'Phim hay'
    );
    for (var i = 0; i < 10; i++) {
      items.add(item);
    }
    return items;
  }

}
