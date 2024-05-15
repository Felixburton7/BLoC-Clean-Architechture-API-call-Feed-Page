import 'package:flutter/material.dart';
import 'package:equatable/equatable.dart';
import 'package:flutter/rendering.dart';

//This is the datamodel
//Post is just a class with an id, title, and body.

//Final so class cannot be subclassed.
//Equatable = The better way of comparing!
final class Post extends Equatable {
  const Post({required this.id, required this.title, required this.body});

  final int id;
  final String title;
  final String body;

// The 'props' getter is overriden (using the get. keyword),
  @override
  List<Object> get props => [id, title, body];
}


// Could also be written as 
// class Post {etc..}