
import 'package:json_annotation/json_annotation.dart';

part 'paging.g.dart';

@JsonSerializable()
class Paging {
  Paging({
    required this.total,
    required this.primaryResults,
    required this.offset,
    required this.limit,
  });

  factory Paging.fromJson(Map<String, dynamic> json) => _$PagingFromJson(json);

  final int total;
  @JsonKey(name: 'primary_results')
  final int primaryResults;
  final int offset;
  final int limit;
}
