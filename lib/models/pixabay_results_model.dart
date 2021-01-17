import 'package:flutter_pixabay_api_search_app/models/pixabay_media_model.dart';

class PixabayResultsModel {
  final int total;
  final int totalHits;
  final List<PixabayMediaModel> hits;

  PixabayResultsModel({
    this.total,
    this.totalHits,
    this.hits,
  })  : assert(total != null, 'total cannot be null'),
        assert(totalHits != null, 'totalHits cannot be null'),
        assert(hits != null, 'hits cannot be null');

  factory PixabayResultsModel.fromMap(Map<String, dynamic> data) {
    if (data == null) {
      return null;
    }

    List<PixabayMediaModel> _parseHits(dynamic hits) {
      if (hits is List) {
        return hits.map((hit) {
          return PixabayMediaModel.fromMap(hit);
        }).toList();
      }
      return null;
    }

    final int total = data['total'];
    final int totalHits = data['totalHits'];
    final List<PixabayMediaModel> hits = _parseHits(data['hits']);

    return PixabayResultsModel(
      total: total,
      totalHits: totalHits,
      hits: hits,
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'total': total,
      'totalHits': totalHits,
      'hits': hits.map((hit) {
        return hit.toMap();
      })?.toList(),
    };
  }
}
