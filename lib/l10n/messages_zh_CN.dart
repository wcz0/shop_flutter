import 'package:intl/message_lookup_by_library.dart';

final message = new MessageLookup();

class MessageLookup extends MessageLookupByLibrary{
  get localeName => 'zh_CN';

 
  // final messages = _notInlinedMessages(_notInlinedMessages);

  // static _notInlinedMessages(_) => <String, String>{
  //   "login": MessageLookupByLibrary.simpleMessage("登录"),

  // };

  final messages = {
    "login": MessageLookupByLibrary.simpleMessage("登录"),
    "logout" : MessageLookupByLibrary.simpleMessage("退出"),
  };
}