// In the post_page use BlocProvider to create and provide an instance of PostBloc to the subtree. An add the PostFetched even so when the app loads, it request the intial batch of posts.

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:http/http.dart' as http;
import '../bloc/post_bloc.dart';
import '../models/post.dart';
import '../widgets/post_list_item.dart';
import '../view/posts_list.dart';

class PostsPage extends StatelessWidget {
  const PostsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocProvider(
        create: (_) => PostBloc(httpClient: http.Client())..add(PostFetched()),
        child: const PostsList(),
      ),
    );
  }
}
