import 'package:flutter/cupertino.dart';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_flutter/config/bootstrap.dart';
import 'package:shop_flutter/pages/common/copyright.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginRoute extends StatefulWidget {
  @override
  State createState() {
    return _LoginRouteState();
  }
}

class _LoginRouteState extends State<LoginRoute> {
  GlobalKey<FormFieldState> phoneKey = GlobalKey<FormFieldState>();
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  bool pwdShow = false;
  bool checkBox = false;
  bool codeControllerVisible = true;
  bool passwordControllerVisible = false;

  @override
  void initState() {
    super.initState();
    String? phone = Bootstrap.prefs!.getString('last-phone');
    if (phone != null) {
      _phoneController.text = phone;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Form(
          child: Column(
            children: <Widget>[
              TextFormField(
                key: phoneKey,
                autofocus: true,
                controller: _phoneController,
                decoration: const InputDecoration(
                  labelText: '手机号',
                  hintText: '请输入手机号',
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (v) {
                  setState(() {});
                },
                validator: (v) {
                  final RegExp phoneRegex = RegExp(r'^1[0-9]{10}$');
                  // 去除首尾空格后判断是否为空
                  if (v!.trim().isEmpty) {
                    return '手机号不能为空';
                  }
                  // 判断是否符合手机号格式
                  if (!phoneRegex.hasMatch(v)) {
                    return '请输入有效的手机号';
                  }
                  return null;
                },
              ),
              Visibility(
                visible: passwordControllerVisible,
                child: TextFormField(
                  controller: _passwordController,
                  decoration: InputDecoration(
                    labelText: '密码',
                    hintText: '请输入密码',
                    prefixIcon: const Icon(Icons.lock),
                    suffixIcon: IconButton(
                      icon: Icon(
                        pwdShow ? Icons.visibility : Icons.visibility_off,
                      ),
                      onPressed: () {
                        setState(() {
                          pwdShow = !pwdShow;
                        });
                      },
                    ),
                  ),
                  validator: (value) =>
                      value!.trim().isNotEmpty ? null : '密码不能为空',
                  obscureText: !pwdShow,
                ),
              ),
              Visibility(
                visible: codeControllerVisible,
                child: TextFormField(
                  controller: _codeController,
                  decoration: InputDecoration(
                    labelText: '验证码',
                    hintText: '请输入验证码',
                    prefixIcon: const Icon(Icons.message),
                    // suffixIcon: Icon(Icons.refresh),
                    suffixIcon: TextButton(
                      onPressed: () => sendCode(context),
                      child: const Text('验证码'),
                    ),
                  ),
                  validator: (value) =>
                      value!.trim().isNotEmpty ? null : '验证码不能为空',
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: ConstrainedBox(
                  constraints: const BoxConstraints.expand(height: 55.0),
                  child: ElevatedButton(
                    onPressed: () => onLogin(context),
                    child: const Text('登录'),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 15),
                child: TextButton(
                  onPressed: () => switchPasswordLogin,
                  child: const Text(
                    '账号登录',
                    style: TextStyle(
                      color: Color.fromARGB(255, 147, 147, 147),
                    ),
                  ),
                ),
              ),
              Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                Checkbox(
                  value: checkBox,
                  onChanged: (bool? value) {
                    setState(() {
                      checkBox = value!;
                    });
                  },
                ),
                RichText(
                  text: TextSpan(
                      style: const TextStyle(color: Colors.grey, fontSize: 12),
                      children: [
                        const TextSpan(
                          text: '已阅读并同意',
                        ),
                        TextSpan(
                          text: '《用户协议》',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(Uri.parse(
                                  'https://v5.crmeb.net/pages/users/privacy/index?type=4'));
                            },
                        ),
                        const TextSpan(text: '和'),
                        TextSpan(
                          text: '《隐私协议》',
                          style:
                              TextStyle(color: Theme.of(context).primaryColor),
                          recognizer: TapGestureRecognizer()
                            ..onTap = () {
                              launchUrl(Uri.parse(
                                  'https://v5.crmeb.net/pages/users/privacy/index?type=3'));
                            },
                        ),
                      ]),
                ),
              ]),
              ...buildCopyRight(),
            ],
          ),
        ),
      ),
    );
  }

  void onChanged(bool value) {
    checkBox = value;
  }

  void onLogin(context) {
    checkBoxValue(context);
    // TODO: 登录请求
    Bootstrap.prefs!.setString('last-phone', _phoneController.text);
  }

  void switchPasswordLogin() {}

  WebViewController webview = WebViewController()
    ..loadRequest(Uri.parse('https://v5.crmeb.net/pages/users/login/index'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted)
    ..setOnConsoleMessage((message) { runJavaScript(message);})


  //   ..runJavaScript('''
  //     // alert('hello');
  //     var dis = document.querySelectorAll('*');
  //     for (const i of dis) {
  //       i.style.display = 'none';
  //     }
  //     alert('hello');
  //     var input = document.getElementsByClassName('uni-input-input')[0];
  //     input.value = '18889288054';
  //     input.dispatchEvent(new Event('input'));
  //     document.getElementsByClassName('uni-checkbox-input')[0].click();
  //     document.getElementsByTagName('uni-button')[0].click()
  // ''');

  void sendCode(BuildContext context) {
    // if (!checkBoxValue(context)) {
    //   return;
    // }
    // if (!phoneKey.currentState!.validate()) {
    //   return;
    // }
    // launchUrl(Uri.parse("https://v5.crmeb.net/pages/users/login/index"));
    showDialog(
        context: context,
        builder: (context) {
          return Dialog(
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                SizedBox(
                  width: MediaQuery.of(context).size.width,
                  height: 300,
                  child: WebViewWidget(
                    controller: webview,
                  ),
                ),
                SizedBox(
                  child: TextButton(
                    onPressed: () {
                      GoRouter.of(context).pop(context);
                    },
                    child: const Text('完成'),
                  ),
                ),
              ],
            ),
          );
        });
  }

  bool checkBoxValue(BuildContext context) {
    if (!checkBox) {
      ScaffoldMessenger.of(context).showSnackBar(
        const SnackBar(
          content: Text('请先同意用户协议和隐私协议'),
        ),
      );
      return false;
    }
    return true;
  }
}
