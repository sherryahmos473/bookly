import 'package:bloc/bloc.dart';
import 'package:bookly/Features/home/data/models/book_model/book_model.dart';
import 'package:bookly/Features/search/data/search_repo.dart';
import 'package:equatable/equatable.dart';

part 'search_result_state.dart';

class SearchResultCubit extends Cubit<SearchResultState> {
  SearchResultCubit(this.searchRepo) : super(SearchResultInitial());

  final SearchRepo searchRepo;
  Future<void> fetchSearchResults({required String category}) async {
    emit(SearchResultLoading());
    final result = await searchRepo.fetchSearchResult(category: category);
    result.fold(
      (failure) => emit(SearchResultFailure(errMessage: failure.errMessage)),
      (books) => emit(SearchResultSuccess(books: books)),
    );
  }
}
