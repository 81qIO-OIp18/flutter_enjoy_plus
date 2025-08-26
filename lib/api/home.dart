import '../constants/index.dart';
import '../utils/DioRequest.dart';

Future<dynamic> getAnnounceListAPI() => dioRequest.get(HTTP_PATH.ANNOUNCE_LIST);
