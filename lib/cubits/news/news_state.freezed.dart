// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'news_state.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Newstate _$NewstateFromJson(Map<String, dynamic> json) {
  return _Newstate.fromJson(json);
}

/// @nodoc
mixin _$Newstate {
  bool get isLoading => throw _privateConstructorUsedError;
  int get totalResults => throw _privateConstructorUsedError;
  String get textSearch => throw _privateConstructorUsedError;
  List<Article>? get articles => throw _privateConstructorUsedError;
  int get page => throw _privateConstructorUsedError;
  dynamic get isFetchError => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $NewstateCopyWith<Newstate> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $NewstateCopyWith<$Res> {
  factory $NewstateCopyWith(Newstate value, $Res Function(Newstate) then) =
      _$NewstateCopyWithImpl<$Res, Newstate>;
  @useResult
  $Res call(
      {bool isLoading,
      int totalResults,
      String textSearch,
      List<Article>? articles,
      int page,
      dynamic isFetchError});
}

/// @nodoc
class _$NewstateCopyWithImpl<$Res, $Val extends Newstate>
    implements $NewstateCopyWith<$Res> {
  _$NewstateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? totalResults = null,
    Object? textSearch = null,
    Object? articles = freezed,
    Object? page = null,
    Object? isFetchError = freezed,
  }) {
    return _then(_value.copyWith(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
      articles: freezed == articles
          ? _value.articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isFetchError: freezed == isFetchError
          ? _value.isFetchError
          : isFetchError // ignore: cast_nullable_to_non_nullable
              as dynamic,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$NewstateImplCopyWith<$Res>
    implements $NewstateCopyWith<$Res> {
  factory _$$NewstateImplCopyWith(
          _$NewstateImpl value, $Res Function(_$NewstateImpl) then) =
      __$$NewstateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isLoading,
      int totalResults,
      String textSearch,
      List<Article>? articles,
      int page,
      dynamic isFetchError});
}

/// @nodoc
class __$$NewstateImplCopyWithImpl<$Res>
    extends _$NewstateCopyWithImpl<$Res, _$NewstateImpl>
    implements _$$NewstateImplCopyWith<$Res> {
  __$$NewstateImplCopyWithImpl(
      _$NewstateImpl _value, $Res Function(_$NewstateImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isLoading = null,
    Object? totalResults = null,
    Object? textSearch = null,
    Object? articles = freezed,
    Object? page = null,
    Object? isFetchError = freezed,
  }) {
    return _then(_$NewstateImpl(
      isLoading: null == isLoading
          ? _value.isLoading
          : isLoading // ignore: cast_nullable_to_non_nullable
              as bool,
      totalResults: null == totalResults
          ? _value.totalResults
          : totalResults // ignore: cast_nullable_to_non_nullable
              as int,
      textSearch: null == textSearch
          ? _value.textSearch
          : textSearch // ignore: cast_nullable_to_non_nullable
              as String,
      articles: freezed == articles
          ? _value._articles
          : articles // ignore: cast_nullable_to_non_nullable
              as List<Article>?,
      page: null == page
          ? _value.page
          : page // ignore: cast_nullable_to_non_nullable
              as int,
      isFetchError:
          freezed == isFetchError ? _value.isFetchError! : isFetchError,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$NewstateImpl implements _Newstate {
  const _$NewstateImpl(
      {this.isLoading = false,
      this.totalResults = 0,
      this.textSearch = '',
      final List<Article>? articles,
      this.page = 1,
      this.isFetchError = false})
      : _articles = articles;

  factory _$NewstateImpl.fromJson(Map<String, dynamic> json) =>
      _$$NewstateImplFromJson(json);

  @override
  @JsonKey()
  final bool isLoading;
  @override
  @JsonKey()
  final int totalResults;
  @override
  @JsonKey()
  final String textSearch;
  final List<Article>? _articles;
  @override
  List<Article>? get articles {
    final value = _articles;
    if (value == null) return null;
    if (_articles is EqualUnmodifiableListView) return _articles;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  @JsonKey()
  final int page;
  @override
  @JsonKey()
  final dynamic isFetchError;

  @override
  String toString() {
    return 'Newstate(isLoading: $isLoading, totalResults: $totalResults, textSearch: $textSearch, articles: $articles, page: $page, isFetchError: $isFetchError)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$NewstateImpl &&
            (identical(other.isLoading, isLoading) ||
                other.isLoading == isLoading) &&
            (identical(other.totalResults, totalResults) ||
                other.totalResults == totalResults) &&
            (identical(other.textSearch, textSearch) ||
                other.textSearch == textSearch) &&
            const DeepCollectionEquality().equals(other._articles, _articles) &&
            (identical(other.page, page) || other.page == page) &&
            const DeepCollectionEquality()
                .equals(other.isFetchError, isFetchError));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      isLoading,
      totalResults,
      textSearch,
      const DeepCollectionEquality().hash(_articles),
      page,
      const DeepCollectionEquality().hash(isFetchError));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$NewstateImplCopyWith<_$NewstateImpl> get copyWith =>
      __$$NewstateImplCopyWithImpl<_$NewstateImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$NewstateImplToJson(
      this,
    );
  }
}

abstract class _Newstate implements Newstate {
  const factory _Newstate(
      {final bool isLoading,
      final int totalResults,
      final String textSearch,
      final List<Article>? articles,
      final int page,
      final dynamic isFetchError}) = _$NewstateImpl;

  factory _Newstate.fromJson(Map<String, dynamic> json) =
      _$NewstateImpl.fromJson;

  @override
  bool get isLoading;
  @override
  int get totalResults;
  @override
  String get textSearch;
  @override
  List<Article>? get articles;
  @override
  int get page;
  @override
  dynamic get isFetchError;
  @override
  @JsonKey(ignore: true)
  _$$NewstateImplCopyWith<_$NewstateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
