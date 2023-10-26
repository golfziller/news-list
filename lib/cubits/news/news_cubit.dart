import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/news_state.dart';
import 'package:list_news/data/models/news_response.dart';
import 'package:list_news/repository/news_repo.dart';

class NewsCubit extends Cubit<Newstate> {
  NewsCubit() : super(Newstate());

  static const String somethingError = 'Something went wrong';

  fetchNewList({loadMore = false}) async {
    try {
      emit(state.copyWith(isLoading: true));
      late int newPage = state.page;
      if (loadMore) {
        newPage = newPage + 1;
      }
      final res = await Modular.get<NewsRepository>()
          .getNewsList(page: newPage, search: state.textSearch);
      if (res == null) {
        emit(
            state.copyWith(isFetchError: true, articles: [], isLoading: false));
        return;
      }
      final data = NewResponse.fromJson(res);
      List<Article> arr = newPage == 1
          ? data.articles
          : [...state.articles ?? [], ...data.articles];

      emit(state.copyWith(
          page: newPage,
          articles: arr,
          totalResults: data.totalResults,
          isLoading: false,
          isFetchError: false));
    } catch (e) {
      print('catch');
    }
  }

  onSearch(String text) async {
    emit(state.copyWith(page: 1, textSearch: text));
    await fetchNewList();
  }
}
