part of 'freatured_books_cubit.dart';

sealed class FreaturedBooksState extends Equatable {
  const FreaturedBooksState();

  @override
  List<Object> get props => [];
}

final class FreaturedBooksInitial extends FreaturedBooksState {}

final class FreaturedBooksLoading extends FreaturedBooksState {}

final class FreaturedBooksFailutre extends FreaturedBooksState {
  final String errMessage;
  const FreaturedBooksFailutre({required this.errMessage});
}

final class FreaturedBooksSuccess extends FreaturedBooksState {
  final List<BookModel> books;
  const FreaturedBooksSuccess({required this.books});
}
