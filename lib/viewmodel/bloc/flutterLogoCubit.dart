import 'package:flutter_bloc/flutter_bloc.dart';

sealed class LogoState {}

class LogoInitial extends LogoState {}

class LogoChanged extends LogoState {}

class LogoCubit extends Cubit<LogoState> {
  LogoCubit() : super(LogoInitial());

  bool isTapped = false;

  bool isHovered = false;

  void onPressed() {
    isTapped = true;
    emit(LogoChanged());
    isTapped = false;
  }

  void onHovered(bool val) {
    isHovered = val;
    emit(LogoChanged());
  }
}
