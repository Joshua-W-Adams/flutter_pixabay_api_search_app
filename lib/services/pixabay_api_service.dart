import 'dart:convert';
import 'package:flutter_pixabay_api_search_app/models/pixabay_results_model.dart';
import 'package:http/http.dart' as http;

class PixabayApiService {
  final String _apiKey = '19895183-11fcdb8a3468162339de8bd48';
  final String _apiDomain = 'pixabay.com';
  final String _apiPath = '/api/';

  /// [requestPictures] is the main method for sending requests for pictures
  /// only to the pixabay RESTful interface api, it does this using basic http/s
  /// request with query parameters
  Future<PixabayResultsModel> requestPictures({
    String query,
    String imageType = 'photo',
    int resultLimit = 50,
  }) async {
    /// define query parameters
    Map<String, dynamic> queryParameters = {
      "key": _apiKey,
      "q": query,
      "image_type": imageType,
      "per_page": resultLimit.toString(),
    };

    /// create URI for request
    Uri uri = Uri(
      host: _apiDomain,
      path: _apiPath,
      queryParameters: queryParameters,
    );

    /// send request to server
    final http.Response response = await http.get('https:$uri');

    /// parse json text string to map
    Map<String, dynamic> map = json.decode(
      /// response.body chooses the bytes->string decoder based on the response
      /// header charset, assumed to be UTF8.
      response.body,

      /// alternatively utf8 character encoding can be enforced
      /// utf8.decode(response.bodyBytes)
    );

    /// convert json map to results model
    return PixabayResultsModel.fromMap(map);
  }
}
