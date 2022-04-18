// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_identity.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

UserModel _$UserModelFromJson(Map<String, dynamic> json) => UserModel(
      token: json['token'] as String?,
      user: json['user'] == null
          ? null
          : UserUIModel.fromJson(json['user'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$UserModelToJson(UserModel instance) => <String, dynamic>{
      'token': instance.token,
      'user': instance.user,
    };

UserUIModel _$UserUIModelFromJson(Map<String, dynamic> json) => UserUIModel(
      id: json['id'] as int?,
      name: json['name'] as String?,
      email: json['email'] as String?,
      createdAt: json['createdAt'] as String?,
      updatedAt: json['updatedAt'] as String?,
      roleId: json['roleId'] as int?,
      img: json['img'] as String?,
    );

Map<String, dynamic> _$UserUIModelToJson(UserUIModel instance) =>
    <String, dynamic>{
      'id': instance.id,
      'name': instance.name,
      'email': instance.email,
      'createdAt': instance.createdAt,
      'updatedAt': instance.updatedAt,
      'roleId': instance.roleId,
      'img': instance.img,
    };
