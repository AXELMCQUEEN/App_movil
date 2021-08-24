import 'package:appintegra/models/user.model.dart';
import 'package:dio/dio.dart';

class UserProvider {
  final _url = 'https://proyecto1hugo.herokuapp.com/user';
  final _http = Dio();
  List<UserModel> usuarios = [];

  Future<void> ObtenerUser() async {
    final _response = await _http.get(_url);
    List<dynamic> _data = _response.data['data'];

    _data.forEach((usuario) {
      final usuarioTemporal1 = UserModel.fromMapJson(usuario);
      usuarios.add(usuarioTemporal1);
    });
  }
}
