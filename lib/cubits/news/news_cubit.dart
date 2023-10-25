import 'package:bloc/bloc.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:list_news/cubits/news/news_state.dart';
import 'package:list_news/data/models/news_response.dart';
import 'package:list_news/data/network/api_service.dart';
import 'package:list_news/repository/news_repo.dart';

class NewsCubit extends Cubit<Newstate> {
  NewsCubit() : super(Newstate());

  static const String somethingError = 'Something went wrong';

  getTestService() async {
    try {
      final res = await Modular.get<NewsRepository>().getNewsList();
      final data = NewResponse.fromJson(res);
    } catch (e) {}
  }
}
