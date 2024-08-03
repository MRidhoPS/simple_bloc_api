import 'package:bloc_api/bloc/user_bloc.dart';
import 'package:bloc_api/data/data_source.dart';
import 'package:bloc_api/page/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc(
        remoteDataSource: RemoteDataSource(),
      )..add(LoadUser()),
      child: const MaterialApp(
        home: HomePage(),
      ),
    );
  }
}
