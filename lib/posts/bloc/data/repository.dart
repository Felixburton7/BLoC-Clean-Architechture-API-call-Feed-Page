// // class Repository {
// //   final DataProviderA dataProviderA;
// //   final DataProviderB dataProviderB;

// //   Future<Data> getAllDataThatMeetsRequirements() async {
// //     final RawDataA dataSetA = await dataProviderA.readData();
// //     final RawDataB dataSetB = await dataProviderB.readData();

// //     final Data filteredData = _filterData(dataSetA, dataSetB);
// //     return filteredData;
// //   }
// // }
// import 'dart:async';
// import 'dart:convert';
// import 'package:bloc/bloc.dart';
// import 'package:bloc_concurrency/bloc_concurrency.dart';
// import 'package:equatable/equatable.dart';
// import 'package:http/http.dart' as http;
// import 'package:stream_transform/stream_transform.dart';
// import '../models/post.dart';

// Future<List<Post>> _fetchPosts([int startIndex = 0]) async {
//   final http.Client httpClient;
//   final response = await httpClient.get(
//     Uri.https(
//       'jsonplaceholder.typicode.com',
//       '/posts',
//       <String, String>{'_start': '$startIndex', '_limit': '$_postLimit'},
//     ),
//   );
//   if (response.statusCode == 200) {
//     final body = json.decode(response.body) as List;
//     return body.map((dynamic json) {
//       final map = json as Map<String, dynamic>;
//       return Post(
//         id: map['id'] as int,
//         title: map['title'] as String,
//         body: map['body'] as String,
//       );
//     }).toList();
//   }
//   throw Exception('error fetching posts');
// }
