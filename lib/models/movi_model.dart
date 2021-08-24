class MoviModel {
  String id;
  String fecha;
  String hora;
  String sensor;

  MoviModel(
      {required this.id,
      required this.fecha,
      required this.hora,
      required this.sensor});

  factory MoviModel.fromMapJson(Map<String, dynamic> api) => MoviModel(
        id: api['id'],
        fecha: api['fecha'],
        hora: api['hora'],
        sensor: api['sensor'],
      );
}
