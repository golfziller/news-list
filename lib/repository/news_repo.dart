import 'package:list_news/data/network/api_service.dart';

class NewsRepository {
  final NetworkService apiClient;
  NewsRepository(this.apiClient);
  static const String endpoint = 'top-headlines';

  getNewsList({limit = 10, country = 'us', page = 1, search = ''}) async {
    try {
      final response = await apiClient.get(endpoint, query: {
        'country': country,
        'page': page,
        'pageSize': limit,
        'q': search
      });
      return response.data;
    } catch (e) {
      return null;
    }
  }
}
