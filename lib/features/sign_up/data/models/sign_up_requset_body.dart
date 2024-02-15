import 'package:json_annotation/json_annotation.dart';

part 'sign_up_requset_body.g.dart';
@JsonSerializable()
class SignUpRequestBody {
  final String name;
  final String email;
  final String password;
  @JsonKey(name: 'password_confirmation')
  final String passwordConfirmation;
  final String phone;
  final int gender;

  SignUpRequestBody({
    required this.name,
    required this.email,
    required this.password,
    required this.passwordConfirmation,
    required this.phone,
    required this.gender,
  });
 
  Map<String, dynamic> toJson() => _$SignUpRequestBodyToJson(this);
}
