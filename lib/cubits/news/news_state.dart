import 'package:json_annotation/json_annotation.dart';
import 'package:equatable/equatable.dart';

part 'news_state.g.dart';

@JsonSerializable()
class Newstate extends Equatable {
  final String firstName;
  final String lastName;
  final DateTime? dateOfBirth;

  @override
  List<Object> get props => [firstName, lastName];
  Newstate({
    this.firstName = '',
    this.lastName = '',
    this.dateOfBirth,
  });
  factory Newstate.fromJson(Map<String, dynamic> json) =>
      _$NewstateFromJson(json);
  Map<String, dynamic> toJson() => _$NewstateToJson(this);
}
