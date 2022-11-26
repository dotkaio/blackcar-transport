
import '../../flutter_flow/flutter_flow_util.dart';

import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;


class AutocompleteAPICall {
  static Future<ApiCallResponse> call({
    String? input = '',
    String? key = 'AIzaSyD2EOAhVI7t1IJaZ8IKQWiNu4eXdFO9t_c',
  }) {
    return ApiManager.instance.makeApiCall(
      callName: 'Autocomplete API',
      apiUrl: 'https://maps.googleapis.com/maps/api/place/autocomplete/json',
      callType: ApiCallType.GET,
      headers: {},
      params: {
        'input': input,
        'key': key,
      },
      returnBody: true,
      cache: false,
    );
  }

  static dynamic id(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].place_id''',
        true,
      );
  static dynamic description(dynamic response) => getJsonField(
        response,
        r'''$.predictions[:].description''',
        true,
      );
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

