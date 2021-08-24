import 'package:appintegra/models/movi_model.dart';
import 'package:dio/dio.dart';

class MoviProvider {
  final _url = 'https://proyecto1hugo.herokuapp.com/api/users';
  final _http = Dio();

  Future<List<MoviModel>> obtenerDatos() async {
    final response = await _http.get(_url);
    List<dynamic> data = response.data;
    return data.map((api) => MoviModel.fromMapJson(api)).toList();
  }
}
