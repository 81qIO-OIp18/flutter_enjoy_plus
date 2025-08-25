import '../constants/index.dart';
import '../utils/DioRequest.dart';

Future<dynamic> getAnnounceListAPI()=>requestDio.get(HTTP_PATH.ANNOUNCE_LIST);