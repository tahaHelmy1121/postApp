import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:white/bloc/user_bloc.dart';
import 'package:white/bloc/user_event.dart';
import 'package:white/bloc/user_state.dart';



class PostListScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Posts')),
      body: BlocBuilder<UserBloc, UserState>(
        builder: (context, state) {
          if (state is UserLoading) {
            return Center(child: CircularProgressIndicator());
          } else if (state is UserLoaded) {
            return ListView.builder(
              itemCount:state.posts.length,
              itemBuilder: (context, index) {
                final post = state.posts[index];

                return  ListTile(
                    title: Text(state.posts![index].name!),
                    subtitle: Text(state.posts[index].email!),

                );
              },
            );
          } else if (state is UserError) {
            return Center(child: Text("aaaaaaaaaaa"));
          }
          return Container();
        },
      ),
    );
  }
}