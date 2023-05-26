// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'paging.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

Paging _$PagingFromJson(Map<String, dynamic> json) => Paging(
      total: json['total'] as int,
      primaryResults: json['primary_results'] as int,
      offset: json['offset'] as int,
      limit: json['limit'] as int,
    );

Map<String, dynamic> _$PagingToJson(Paging instance) => <String, dynamic>{
      'total': instance.total,
      'primary_results': instance.primaryResults,
      'offset': instance.offset,
      'limit': instance.limit,
    };
