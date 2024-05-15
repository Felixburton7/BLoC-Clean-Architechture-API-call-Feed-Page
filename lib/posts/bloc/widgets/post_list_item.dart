import 'package:flutter/material.dart';
// import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
// import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:http/http.dart' as http;
import '../bloc/post_bloc.dart';
import '../models/post.dart';
import '../widgets/bottom_loader.dart';
import '../widgets/post_list_item.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({required this.post, super.key});

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: ListTile(
        leading: Text('${post.id}', style: textTheme.bodySmall),
        title: Text(post.title),
        isThreeLine: true,
        subtitle: Text(post.body),
        dense: true,
      ),
    );
  }
}
