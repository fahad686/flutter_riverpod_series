import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/api_state_notifier_provider/post_state.dart';
import 'package:flutter_riverpod_series/models/post_model.dart';

class HomeSceen extends ConsumerWidget {
  const HomeSceen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("State Notifier Provider Api Work"),
        centerTitle: true,
      ),
      body: Consumer(
        builder: ((context, ref, child) {
          //using ref to call provider
          PostsState state = ref.watch(postNotifierProvider);

          /// using if else for handling state
          if (state is InitialPostsState) {
            return const Center(
                child: Text("Press on floating button for api data"));
          }
          if (state is PostsLoadingState) {
            return const Center(child: CircularProgressIndicator());
          }
          if (state is PostsErrorState) {
            return Text(state.message);
          }
          if (state is PostsLoadedState) {
            return _buildListView(state);
          } else {
            return const Center(child: Text("nothing found"));
          }
        }),
      ),
      //floating action button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          ref.read(postNotifierProvider.notifier).fetchPostApi();
        },
        child: Icon(Icons.message),
      ),
    );
  }

  Widget _buildListView(PostsLoadedState state) {
    return ListView.builder(
      itemCount: state.postsList.length,
      itemBuilder: (BuildContext context, int index) {
        //creatin object of model and also get the object of state loaded class where our list
        PostModel post = state.postsList[index];
        return ListTile(
          leading: CircleAvatar(
            child: Text(
              post.id.toString(),
            ),
          ),
          title: Text(
            post.title.toString(),
          ),
        );
      },
    );
  }
}
