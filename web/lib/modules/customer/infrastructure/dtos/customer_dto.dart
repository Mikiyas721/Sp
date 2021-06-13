import 'package:dartz/dartz.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:sp_web/common/dto.dart';
import 'package:sp_web/modules/customer/domain/entities/customer.dart';

part 'customer_dto.g.dart';

@JsonSerializable(nullable: false)
class CustomerDto extends Dto<Customer> implements TimeStampedDto {
  @JsonKey(nullable: true, includeIfNull: false)
  final String id;
  final String imageName;
  final String name;
  final String phoneNumber;
  final String email;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime createdAt;
  @JsonKey(nullable: true, includeIfNull: false)
  final DateTime updatedAt;

  CustomerDto({
    this.id,
    this.name,
    this.phoneNumber,
    this.email,
    this.imageName,
    this.createdAt,
    this.updatedAt,
  });

  factory CustomerDto.fromJson(Map<String, dynamic> map) =>
      _$CustomerDtoFromJson(map);

  Map<String, dynamic> toJson() => _$CustomerDtoToJson(this);

  @override
  Option<Customer> toDomain() {
    return Customer.create(
      id: id,
      name: name,
      phoneNumber: phoneNumber,
      email: email,
      imageName: imageName,
      createdAt: createdAt,
      updatedAt: updatedAt,
    );
  }

  static CustomerDto fromDomain(Customer customer) {
    return CustomerDto(
      id: customer.id,
      name: customer.name.name,
      phoneNumber: customer.phoneNumber.phoneNumber,
      email: customer.email.email,
      imageName: customer.imageName.imageName,
      createdAt: customer.createdAt,
      updatedAt: customer.updatedAt,
    );
  }
}
