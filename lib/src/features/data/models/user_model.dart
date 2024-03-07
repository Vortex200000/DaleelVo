import '../../domain/entites/user_entity.dart';
import '../enums/provider_enum.dart';
import '../enums/user_type.dart';

class UserModel extends UserEntity {
  const UserModel(
      {required super.uid,
      required super.email,
      required super.displayName,
      required super.phoneNumber,
      required super.photoUrl,
      required super.online,
      required super.lastSeen,
      required super.type,
      required super.provider,
      required super.create,
      });

  factory UserModel.fromJson(Map<String, dynamic>? map) {
    return UserModel(
      uid: map!['uid'],
      email: map['email'],
      displayName: map['display_name'],
      photoUrl: map['photo_url'],
      phoneNumber: map['phone_number'],
      online: map['online'],
      lastSeen: DateTime.fromMillisecondsSinceEpoch(map['last_seen']),
      type: (map['user_type'] as String).toUserEnum,
      provider: (map['provider'] as String).toProviderEnum,
      create: DateTime.fromMillisecondsSinceEpoch(map['create']),
    );
  }

  Map<String, dynamic> get toJson => {
        'uid': uid,
        'email': email,
        'display_name': displayName,
        'photo_url': photoUrl,
        'phone_number': phoneNumber,
        'online': online,
        'last_seen': lastSeen.millisecondsSinceEpoch,
        'user_type': type.name,
        'provider': provider.name,
        'create': create.millisecondsSinceEpoch,
      };
}
