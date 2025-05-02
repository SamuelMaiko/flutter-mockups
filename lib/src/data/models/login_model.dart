class LoginModel {
  final String status;
  final String action;
  final String accessToken;
  final String refreshToken;

  LoginModel({
    required this.status,
    required this.action,
    required this.accessToken,
    required this.refreshToken,
  });
  factory LoginModel.fromJson(Map<String, dynamic> json) {
    return LoginModel(
      status: json['status'],
      action: json['action'],
      accessToken: json['access_token'],
      refreshToken: json['refresh_token'],
    );
  }

  Map<String, dynamic> toJson() {
    return {
      'status': status,
      'action': action,
      'access_token': accessToken,
      'refresh_token': refreshToken,
    };
  }
}
