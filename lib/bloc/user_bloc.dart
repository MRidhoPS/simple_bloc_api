import 'package:bloc/bloc.dart';
import 'package:bloc_api/data/data_source.dart';
import 'package:flutter/material.dart';

// import '../model/user_model.dart';

part 'user_event.dart';
part 'user_state.dart';

class UserBloc extends Bloc<UserEvent, UserState> {
  final RemoteDataSource
      remoteDataSource; // menggunakan ini karna kita akan menggunakan data yang ada di rds ini
  UserBloc({required this.remoteDataSource}) : super(UserInitial()) {
    on<LoadUser>((event, emit) async {
      emit(UserLoading());

      try {
        final response = await remoteDataSource.getUsers();
        emit(UserLoaded(response.data));
      } catch (e) {
        emit(UserError(e.toString()));
      }
    });
  }
}
