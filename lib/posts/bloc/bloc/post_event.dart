part of 'post_bloc.dart';

sealed class PostEvent extends Equatable {
  @override
  List<Object> get props => [];
}

final class PostFetched extends PostEvent {}


// For this
// 1) PostBloc responds to a single event; PostFetched, which will be added by the presentation layer, when it needs more posts (leagues)

// 2) PostFetched event is a type of PostEvent, create bloc/post_event.dart and implement the event 

// - Out PostBloc will be recieving PostEvents and converting them to PostState,  All our PostEvents are defined (PostFetched) here. 
