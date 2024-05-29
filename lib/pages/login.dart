import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:shop_flutter/api/auth.dart';
import 'package:shop_flutter/config/bootstrap.dart';
import 'package:shop_flutter/pages/common/copyright.dart';
import 'package:url_launcher/url_launcher.dart';
import 'package:webview_flutter/webview_flutter.dart';

class LoginRoute extends StatefulWidget {
  const LoginRoute({super.key});

  @override
  State createState() {
    return _LoginRouteState();
  }
}

class _LoginRouteState extends State<LoginRoute> {
  GlobalKey<FormFieldState> phoneKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> passwordKey = GlobalKey<FormFieldState>();
  GlobalKey<FormFieldState> codeKey = GlobalKey<FormFieldState>();
  final TextEditingController _phoneController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _codeController = TextEditingController();
  OverlayEntry? _overlayEntry;
  String _buttonLabel = '账号登录';
  bool _pwdShow = false;
  bool _checkBox = false;
  bool _codeControllerVisible = true;
  bool _passwordControllerVisible = false;
  bool _loginButtonDisabled = false;

  @override
  void initState() {
    super.initState();
    String? phone = Bootstrap.prefs!.getString('last-phone');
    if (phone != null) {
      _phoneController.text = phone;
    }
    _overlayEntry = OverlayEntry(
      builder: (context) => const Center(
        child: CircularProgressIndicator(),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Form(
            child: Column(
              children: <Widget>[
                // if (_overlayEntry != null)
                //   _overlayEntry?.builder(context) as Widget,
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
                  visible: _passwordControllerVisible,
                  child: TextFormField(
                    key: passwordKey,
                    controller: _passwordController,
                    decoration: InputDecoration(
                      labelText: '密码',
                      hintText: '请输入密码',
                      prefixIcon: const Icon(Icons.lock),
                      suffixIcon: IconButton(
                        icon: Icon(
                          _pwdShow ? Icons.visibility : Icons.visibility_off,
                        ),
                        onPressed: () {
                          setState(() {
                            _pwdShow = !_pwdShow;
                          });
                        },
                      ),
                    ),
                    validator: (value) =>
                        value!.trim().isNotEmpty ? null : '密码不能为空',
                    obscureText: !_pwdShow,
                  ),
                ),
                Visibility(
                  visible: _codeControllerVisible,
                  child: TextFormField(
                    key: codeKey,
                    controller: _codeController,
                    decoration: InputDecoration(
                      labelText: '验证码',
                      hintText: '请输入验证码',
                      prefixIcon: const Icon(Icons.message),
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
                      onPressed:
                          _loginButtonDisabled ? null : () => _onLogin(context),
                      child: const Text('登录'),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 15),
                  child: TextButton(
                    onPressed: () => switchPasswordLogin(context),
                    child: Text(
                      _buttonLabel,
                      style: const TextStyle(
                        color: Color.fromARGB(255, 147, 147, 147),
                      ),
                    ),
                  ),
                ),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Checkbox(
                    value: _checkBox,
                    onChanged: (bool? value) {
                      setState(() {
                        _checkBox = value!;
                      });
                    },
                  ),
                  RichText(
                    text: TextSpan(
                        style:
                            const TextStyle(color: Colors.grey, fontSize: 12),
                        children: [
                          const TextSpan(
                            text: '已阅读并同意',
                          ),
                          TextSpan(
                            text: '《用户协议》',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () {
                                launchUrl(Uri.parse(
                                    'https://v5.crmeb.net/pages/users/privacy/index?type=4'));
                              },
                          ),
                          const TextSpan(text: '和'),
                          TextSpan(
                            text: '《隐私协议》',
                            style: TextStyle(
                                color: Theme.of(context).primaryColor),
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
      ),
    );
  }

// 登录
  void _onLogin(BuildContext context) async {
    if (!checkBoxValue()) return;
    _showLoading();

    setState(() {
      _loginButtonDisabled = true;
    });
    if (_buttonLabel != '账号登录') {
      await _loginByPassword();
    } else {
      await _loginByCode();
    }
    setState(() {
      _loginButtonDisabled = false;
    });
    _hideLoading();
    Bootstrap.prefs!.setString('last-phone', _phoneController.text);
  }

// 密码登录
  Future<void> _loginByPassword() async {
    if (!phoneKey.currentState!.validate()) {
      return;
    }
    if (!passwordKey.currentState!.validate()) {
      return;
    }
    var r =
        await byPasswordLogin(_phoneController.text, _passwordController.text);
    _loginProcess(r);
  }

// 登录处理
  _loginProcess(r) {
    if (r.data['status'] == 200) {
      Bootstrap.prefs!.setString('token', r.data['data']['token']);
      GoRouter.of(context).pop();
    }
    if (r.data['status'] == 400) {
      _scaffoldMessenger(r.data['msg']);
    }
  }

// 验证码登录
  Future<void> _loginByCode() async {
    if (!phoneKey.currentState!.validate()) {
      return;
    }
    if (!codeKey.currentState!.validate()) {
      return;
    }
    var r = await byCodeLogin(_phoneController.text, _codeController.text);
    _loginProcess(r);
  }

  void switchPasswordLogin(BuildContext context) {
    setState(() {
      _codeControllerVisible = !_codeControllerVisible;
      _passwordControllerVisible = !_passwordControllerVisible;
      _buttonLabel = _codeControllerVisible ? '账号登录' : '验证码登录';
      build(context);
    });
  }

  WebViewController webview = WebViewController()
    ..loadRequest(Uri.parse('https://v5.crmeb.net/pages/users/login/index'))
    ..setJavaScriptMode(JavaScriptMode.unrestricted);

// 发送验证码
  void sendCode(BuildContext context) {
    if (!checkBoxValue()) {
      return;
    }
    if (!phoneKey.currentState!.validate()) {
      return;
    }
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

    double width = MediaQuery.of(context).size.width;
    int htmlWidth = (width * 8 ~/ 10).toInt();
    webview.runJavaScript('''
      var v = document.getElementsByClassName('verifybox')[0];
      v.style.maxWidth = '${htmlWidth}px';
      var img = document.getElementsByClassName('verify-image-panel')[0];
      img.style = '${htmlWidth}px; height: 155px; margin-bottom: 5px;';
      var bar = document.getElementsByClassName('verify-bar-area')[0];
      bar.style = 'width: ${htmlWidth - 25}px; color: rgb(0, 0, 0); border-color: rgb(221, 221, 221); line-height: 40px';
      var input = document.getElementsByClassName('uni-input-input')[0];
      input.value = '${_phoneController.text}';
      input.dispatchEvent(new Event('input'));
      document.getElementsByClassName('uni-checkbox-input')[0].click();
      document.getElementsByTagName('uni-button')[0].click()
    ''');
  }

  bool checkBoxValue() {
    if (!_checkBox) {
      _scaffoldMessenger('请先同意用户协议和隐私协议');
      return false;
    }
    return true;
  }

  void _showLoading() {
    setState(() {
      Overlay.of(context).insert(_overlayEntry!);
    });
  }

  void _hideLoading() {
    setState(() {
      _overlayEntry!.remove();
    });
  }

  _scaffoldMessenger(String msg) {
    ScaffoldMessenger.of(context).hideCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(msg),
      ),
    );
  }
}
