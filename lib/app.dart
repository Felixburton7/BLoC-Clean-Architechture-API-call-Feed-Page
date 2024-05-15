import 'package:flutter/material.dart';
// import 'package:flutter_infinite_list/posts/posts.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'dart:convert';
import 'package:bloc/bloc.dart';
import 'package:bloc_concurrency/bloc_concurrency.dart';
import 'package:equatable/equatable.dart';
import 'package:http/http.dart' as http;
import 'package:stream_transform/stream_transform.dart';
import './posts/bloc/models/post.dart';
import './simple_bloc_observer.dart';
import './posts/bloc/view/post_page.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(
            title: const Text(
              'Feed from API',
              style: TextStyle(fontSize: 25),
            ),
            backgroundColor: Colors.blue,
            foregroundColor: Colors.white,
            toolbarHeight: 60,
            centerTitle: true),
        body: const PostsPage(),
      ),
    );
  }
}
