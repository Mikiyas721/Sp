import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/domain/entities/admin.dart';
import '../../common/extensions.dart';

part 'admin_dto.g.dart';

@JsonSerializable(nullable: false)
class AdminDto extends Dto<Admin> implements TimeStampedDto {
  @JsonKey(nullable: true, includeIfNull: false)
  final String id;
  final String firstName;
  final String lastName;
  final String phoneNumber;
  final String email;
  final String employeePosition;
  final double salary;
  final String employeeType;
  final String photoUrl;
  final String docUrl;
  final String privilegeType;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;

  AdminDto({
    this.id,
    this.firstName,
    this.lastName,
    this.phoneNumber,
    this.email,
    this.employeePosition,
    this.salary,
    this.employeeType,
    this.photoUrl,
    this.docUrl,
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
      firstName: firstName,
      lastName: lastName,
      phoneNumber: phoneNumber,
      email: email,
      employeePosition: employeePosition,
      salary: salary,
      employeeType: employeeType,
      photoUrl: photoUrl,
      docUrl: docUrl,
      privilegeType: privilegeType,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static AdminDto fromDomain(Admin admin) {
    return AdminDto(
      id: admin.id,
      firstName: admin.firstName.name,
      lastName: admin.lastName.name,
      phoneNumber: admin.phoneNumber.phoneNumber,
      email: admin.email.email,
      employeePosition:
          admin.employeePosition.getString().getOrElse(() => null),
      salary: admin.salary.salary,
      employeeType: admin.employeeType.getString().getOrElse(() => null),
      photoUrl: admin.photoUrl.imageUrl,
      docUrl: admin.docUrl.imageUrl,
      privilegeType: admin.privilegeType.getString().getOrElse(() => null),
      createdAt: admin.createdAt,
      updatedAt: admin.updatedAt,
    );
  }
}
