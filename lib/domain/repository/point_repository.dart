import 'package:flutter_workshop/domain/model/point.dart';
import 'package:flutter_workshop/network/api_service.dart';

class PointRepository {
  final ApiService _service;

  PointRepository(this._service);

  Future<List<Point>> getNearbyPoints(Location location, String q) async {
    final items = await _service.getNearbyPoints(location.lat, location.lng, q);
    return items.map((apiModel) => apiModel.toModel()).toList();
  }
}
