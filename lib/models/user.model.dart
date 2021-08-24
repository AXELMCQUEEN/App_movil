class UserModel {
  String id;
  String usuario;
  String email;
  String password;

  UserModel(
      {required this.id,
      required this.usuario,
      required this.email,
      required this.password});

  factory UserModel.fromMapJson(Map<String, dynamic> api) => UserModel(
        id: api['id'],
        usuario: api['usuario'],
        email: api['email'],
        password: api['password'],
      );

  Map<String, dynamic> tojson() => {
        'usuario': usuario,
        'email': email,
        'password': password,
      };
}
