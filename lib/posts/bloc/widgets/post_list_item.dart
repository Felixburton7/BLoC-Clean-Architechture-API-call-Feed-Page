import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:http/http.dart' as http;
import '../bloc/post_bloc.dart';
import '../models/post.dart';
import '../widgets/bottom_loader.dart';
import '../widgets/post_list_item.dart';

class PostListItem extends StatelessWidget {
  const PostListItem({required this.post, Key? key}) : super(key: key);

  final Post post;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    return Material(
      child: Padding(
        padding: const EdgeInsets.symmetric(vertical: 1, horizontal: 5),
        child: Container(
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment.topLeft,
              end: Alignment.topRight,
              colors: [
                Color(0xFF2193b0), // Start color: #2193b0
                Color(0xFF6dd5ed), // End color: #6dd5ed
              ],
            ),
            borderRadius: BorderRadius.circular(10),
            border: Border.all(color: Color.fromARGB(0, 11, 11, 11)),
          ),
          child: ListTile(
            leading: Text('${post.id}',
                style: TextStyle(
                    color: Colors.white)), // Update text color to white
            title: Text(
              post.title,
              style: TextStyle(
                color: Colors.black, // Update text color to white
                fontWeight: FontWeight.bold,
              ),
            ),
            isThreeLine: true,
            subtitle: Text(post.body,
                style: TextStyle(
                    color: Colors.white)), // Update text color to white
            dense: true,
          ),
        ),
      ),
    );
  }
}
