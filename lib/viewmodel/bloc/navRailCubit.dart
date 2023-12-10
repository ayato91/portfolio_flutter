import 'package:flutter_bloc/flutter_bloc.dart';

sealed class NavRailState {}

final class NavRailInitial extends NavRailState {}

final class NavRailChange extends NavRailState {}

class NavRailCubit extends Cubit<NavRailState> {
  NavRailCubit() : super(NavRailInitial());

  int index = 0;

  void indexChange(value) {
    index = value;
    print(index);
    emit(NavRailChange());
  }
}
