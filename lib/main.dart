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
import 'app.dart';

void main() {
  // Log transitions and errors.
  Bloc.observer = const SimpleBlocObserver();
  runApp(const App());
}
