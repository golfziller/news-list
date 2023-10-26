// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'news_state.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$NewstateImpl _$$NewstateImplFromJson(Map<String, dynamic> json) =>
    _$NewstateImpl(
      isLoading: json['isLoading'] as bool? ?? false,
      totalResults: json['totalResults'] as int? ?? 0,
      textSearch: json['textSearch'] as String? ?? '',
      articles: (json['articles'] as List<dynamic>?)
          ?.map((e) => Article.fromJson(e as Map<String, dynamic>))
          .toList(),
      page: json['page'] as int? ?? 1,
      isFetchError: json['isFetchError'] ?? false,
    );

Map<String, dynamic> _$$NewstateImplToJson(_$NewstateImpl instance) =>
    <String, dynamic>{
      'isLoading': instance.isLoading,
      'totalResults': instance.totalResults,
      'textSearch': instance.textSearch,
      'articles': instance.articles,
      'page': instance.page,
      'isFetchError': instance.isFetchError,
    };
