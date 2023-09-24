class LoginResponse {
  String accountId;
  String title;
  String firstName;
  String lastName;
  String email;
  String role;
  DateTime? created;
  DateTime? updated;
  bool isVerified;
  String jwtToken;
  String avatar;
  String refreshToken;

  LoginResponse({
    required this.accountId,
    required this.title,
    required this.firstName,
    required this.lastName,
    required this.email,
    required this.role,
    this.created,
    this.updated,
    required this.isVerified,
    required this.jwtToken,
    required this.avatar,
    required this.refreshToken,
  });
}
