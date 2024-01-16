import 'package:flutter/foundation.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_riverpod_series/models/post_model.dart';
import 'package:flutter_riverpod_series/models/services/http_get_service.dart';

// 14 creatig gloal state Provider
final postNotifierProvider =
    StateNotifierProvider<PostNotifier, PostsState>((ref) => PostNotifier());

//1.5 decorator or annotation
@immutable
// 1 creatin abstract class for definig other class thats extend to it
abstract class PostsState {}

// 2 initial state
class InitialPostsState extends PostsState {}

// 3 post loading state
class PostsLoadingState extends PostsState {}

// 4 loaded post state
class PostsLoadedState extends PostsState {
  PostsLoadedState({
    required this.postsList,
  });
  final List<PostModel> postsList;
}

// 5 ErrorPost state
class PostsErrorState extends PostsState {
  PostsErrorState({
    required this.message,
  });
  final String message;
}

// 6 Notifierclass for counsuming all class
class PostNotifier extends StateNotifier<PostsState> {
  // 7  we initial pass initialstate to super
  PostNotifier() : super(InitialPostsState());
  // 10 craeting object of api service class for accessing their attributes like method and data member
  final HttpGetPost _httpGetPostObject = HttpGetPost();
  // 8 crating function for calling
  fetchPostApi() async {
    try {
      // 11 first calll initial state automaticaly and then we call loading state
      state = PostsLoadingState();
      // 9 calling apiclass object for calling class method
      List<PostModel> postsList = await _httpGetPostObject.getPosts();
// 12 then we call loaded state
      state = PostsLoadedState(postsList: postsList);
    } catch (e) {
      // 13 if we got error then we call ErrorLoadedState
      state = PostsErrorState(message: e.toString());
    }
  }
}
