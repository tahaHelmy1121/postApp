import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white/bloc/user_bloc.dart';
import 'package:white/repo/user.dart';
import 'bloc/user_event.dart';
import 'home.dart';
import 'injection.dart';


void main() {
  setupLocator(); // Initialize the service locator
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => UserBloc( getIt<UserRepo>())..add(FetchEvents()),
      child: MaterialApp(
        title: 'BLoC User List',
        home: PostListScreen(),
      ),
    );
  }
}