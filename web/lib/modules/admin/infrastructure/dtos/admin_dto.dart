import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/modules/admin/domain/entities/admin.dart';
import '../../../../common/extensions.dart';

part 'admin_dto.g.dart';

@JsonSerializable(nullable: false)
class AdminDto extends Dto<Admin> implements TimeStampedDto {
  @JsonKey(nullable: true, includeIfNull: false)
  final String id;
  final String phoneNumber;
  final String password;
  @JsonKey(nullable: true, includeIfNull: false)
  final String privilegeType;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;

  AdminDto({
    this.id,
    this.phoneNumber,
    this.password,
    this.privilegeType,
    this.createdAt,
    this.updatedAt,
  });

  factory AdminDto.fromJson(Map<String, dynamic> json) =>
      _$AdminDtoFromJson(json);

  Map<String, dynamic> toJson() => _$AdminDtoToJson(this);

  @override
  Option<Admin> toDomain() {
    return Admin.create(
      id: id,
      phoneNumber: phoneNumber,
      password: password,
      privilegeType: privilegeType,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static AdminDto fromDomain(Admin admin) {
    return AdminDto(
      id: admin.id,
      phoneNumber: admin.phoneNumber.phoneNumber,
      password: admin.password.password,
      privilegeType: admin.privilegeType.getString().getOrElse(() => null),
      createdAt: admin.createdAt,
      updatedAt: admin.updatedAt,
    );
  }
}
