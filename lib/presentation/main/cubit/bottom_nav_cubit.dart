import 'package:flutter_bloc/flutter_bloc.dart';

enum BottomNav{board, attend, user, login}

class BottomNavCubit extends Cubit<BottomNav>{
  BottomNavCubit(): super(BottomNav.board);
  
  void changeIndex(int index) => emit(BottomNav.values[index]);
}