import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:white/bloc/user_event.dart';
import 'package:white/bloc/user_state.dart';
import 'package:white/repo/user.dart';


class UserBloc extends Bloc<UserEvent, UserState> {


  final UserRepo postRepo;

  UserBloc(this.postRepo) : super(UserInitial()) {
    on<FetchEvents>((event, emit) async {
      print(postRepo.getUsers());
      emit(UserLoading());
      try {
        final posts = await postRepo.getUsers();
        print("ssssssssssssssssssss ${posts.first}");

         // Emit the loaded state with the fetched posts
        emit(UserLoaded(posts));
         print("Posts loaded successfully: ${posts.length}");
      } catch (e) {
        emit(UserError(e.toString()));
        print("Error loading postssssssssssss: $e");
      }
    });
  }


}
