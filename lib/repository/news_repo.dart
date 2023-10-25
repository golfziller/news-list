import 'dart:convert';

import 'package:dio/dio.dart';
import 'package:list_news/data/network/api_service.dart';

class NewsRepository {
  final NetworkService apiClient;
  NewsRepository(this.apiClient);
  static const String endpoint = 'top-headlines';

  getNewsList() async {
    try {
      final response =
          await apiClient.get(endpoint, query: {'country': 'us', 'page': '2'});
      return response.data;
    } catch (e) {
      print('xxxxx => $e');
      return null;
    }
  }
}
