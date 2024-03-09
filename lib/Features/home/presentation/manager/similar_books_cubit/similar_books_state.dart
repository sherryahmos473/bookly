part of 'similar_books_cubit.dart';

sealed class SimilarBooksState extends Equatable {
  const SimilarBooksState();

  @override
  List<Object> get props => [];
}

final class SimilarBooksInitial extends SimilarBooksState {}

final class SimilarBooksFaluire extends SimilarBooksState {
  final String errMessage;
  const SimilarBooksFaluire({required this.errMessage});
}

final class SimilarBooksLoading extends SimilarBooksState {}

final class SimilarBooksSuccess extends SimilarBooksState {
  final List<BookModel> books;
  const SimilarBooksSuccess({required this.books});
}
