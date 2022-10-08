// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'complete_content_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ApiContentModel _$$_ApiContentModelFromJson(Map<String, dynamic> json) =>
    _$_ApiContentModel(
      id: json['id'] as String,
      title: json['title'] as String?,
      content: json['content'] as String,
      code: json['code'] as String?,
      codeResult: json['codeResult'] as String?,
      createdAt: DateTime.parse(json['created_at'] as String),
      creatorId: json['creator_id'] as String?,
      creator: json['creator'] == null
          ? null
          : ApiUserModel.fromJson(json['creator'] as Map<String, dynamic>),
      parentId: json['parent_id'] as String?,
      contentType: json['content_type'] as String,
      username: json['username'] as String?,
      userImage: json['userImage'] as String?,
    );

Map<String, dynamic> _$$_ApiContentModelToJson(_$_ApiContentModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'content': instance.content,
      'code': instance.code,
      'codeResult': instance.codeResult,
      'created_at': instance.createdAt.toIso8601String(),
      'creator_id': instance.creatorId,
      'creator': instance.creator,
      'parent_id': instance.parentId,
      'content_type': instance.contentType,
      'username': instance.username,
      'userImage': instance.userImage,
    };
