import 'package:intl/intl.dart';
import 'package:intl/message_lookup_by_library.dart';

final message = MessageLookup();

final _keepAnalysisHappy = Intl.defaultLocale;


typedef MessageIfAbsent(String message_str, List args);

class MessageLookup extends MessageLookupByLibrary{
  @override
  get localeName => 'messages';

  @override
  final messages = {
    "login": MessageLookupByLibrary.simpleMessage("登录"),
    "logout" : MessageLookupByLibrary.simpleMessage("退出"),
  };
}