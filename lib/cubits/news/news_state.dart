import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:json_annotation/json_annotation.dart';
import 'package:list_news/data/models/news_response.dart';

part 'news_state.freezed.dart';
part 'news_state.g.dart';

@freezed
class Newstate with _$Newstate {
  const factory Newstate({
    @Default(false) bool isLoading,
    @Default(0) int totalResults,
    @Default('') String textSearch,
    List<Article>? articles,
    @Default(1) int page,
    @Default(false) isFetchError,
  }) = _Newstate;

  factory Newstate.fromJson(Map<String, Object?> json) =>
      _$NewstateFromJson(json);
}
