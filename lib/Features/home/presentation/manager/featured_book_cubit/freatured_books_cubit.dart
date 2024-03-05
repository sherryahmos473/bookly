import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/home/data/repos/home_repo.dart';
import 'package:equatable/equatable.dart';

part 'freatured_books_state.dart';

class FreaturedBooksCubit extends Cubit<FreaturedBooksState> {
  FreaturedBooksCubit(this.homeRepo) : super(FreaturedBooksInitial());
  final HomeRepo homeRepo;
  Future<void> fetchFeaturedBooks() async {
    emit(FreaturedBooksLoading());
    final result = await homeRepo.fetchFeaturedBooks();
    result.fold(
      (failure) => emit(FreaturedBooksFailutre(errMessage: failure.errMessage)),
      (books) => emit(FreaturedBooksSuccess(books: books)),
    );
  }
}
