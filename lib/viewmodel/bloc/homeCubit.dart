import 'package:flutter_bloc/flutter_bloc.dart';

sealed class HomeState {}

final class HomeInitial extends HomeState {}

final class ButttonColorChange extends HomeState {}

class HomeCubit extends Cubit<HomeState> {
  HomeCubit() : super(HomeInitial());

  bool isHovered1 = false;
  bool isHovered2 = false;

  void exploreButtonHover(value) {
    isHovered1 = value;
    emit(ButttonColorChange());
  }

  void contactButtonHover(value) {
    isHovered2 = value;
    emit(ButttonColorChange());
  }
}
