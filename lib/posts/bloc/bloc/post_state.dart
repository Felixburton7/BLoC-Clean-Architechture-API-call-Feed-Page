part of 'post_bloc.dart';

// Presentation layer will need several bits of information (states) for layout.

// PostInitial: Presentation layer for a loading indicator, while initial batch are loading
// PostSuccess; tell the presentation layer the content it has to render;
// a) posts - will be the List<Post> which will be displayed
// b) hasReachedMax - Will tell the presentation layer whether or not it has reached the maximum number of posts.
// PostFailure: The presentation layer an error has occured while fetching posts.

//enum = defines the type 'PostStatus', used to define a type that has a limited set of values, makes code readable (and Typesafe)
enum PostStatus { initial, success, failure }

// This is the post state class, holds the state of the posts in an application
final class PostState extends Equatable {
  const PostState({
    this.status = PostStatus.initial, // Initalize to PostStatus as default
    this.posts = const <Post>[], // initalized to empty list at first
    this.hasReachedMax = false, // initalized as false.
  });

  final PostStatus status;
  final List<Post> posts;
  final bool hasReachedMax;

  PostState copyWith({
    // Allows a new PostState instance to be created by copying the existing state and ovveriding certain properties with new
    // values.
    PostStatus? status,
    List<Post>? posts,
    bool? hasReachedMax,
  }) {
    return PostState(
      status: status ?? this.status, //Otherwise uses current states as default.
      posts: posts ?? this.posts,
      hasReachedMax: hasReachedMax ?? this.hasReachedMax,
    );
  }

  // return a string of of the PostState instance
  @override
  String toString() {
    return '''PostState { status: $status, hasReachedMax: $hasReachedMax, posts: ${posts.length} }''';
  }

  // Getter (a method that retrieves the value of the property), here is it overriden so the props getter is used by Equatable.
  //Tells Equatable which properties to consider when checking equality.
  @override
  List<Object> get props => [status, posts, hasReachedMax];
}
