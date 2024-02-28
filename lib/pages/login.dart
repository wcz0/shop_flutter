import 'package:flutter/material.dart';

class LoginRoute extends StatefulWidget {
  @override
  State createState() {
    return _LoginRouteState();
  }
}

class _LoginRouteState extends State<LoginRoute> {
  TextEditingController _phoneController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();
  TextEditingController _codeController = TextEditingController();
  bool pwdShow = false;
  bool _nameAutoFocus = true;

  @override
  void initState() {
    // TODO: 上次登录的手机号
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: null,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          children: <Widget>[
            TextFormField(
              autofocus: _nameAutoFocus,
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
                return v!.trim().isNotEmpty ? null : '手机号不能为空';
              },
            ),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: '密码',
                hintText: '请输入密码',
                prefixIcon: Icon(Icons.lock),
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
              validator: (value) => value!.trim().isNotEmpty ? null : '密码不能为空',
              obscureText: !pwdShow,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: ConstrainedBox(
                constraints: const BoxConstraints.expand(height: 55.0),
                child: const ElevatedButton(
                  onPressed: _onLogin,
                  child: Text('登录'),
                ),
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 15),
              child: TextButton(
                onPressed: _switchPasswordLogin,
                child: Text('账号登录',
                  style: TextStyle(
                    color: Color.fromARGB(255, 147, 147, 147),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

void _onLogin() async {}

void _switchPasswordLogin() {}
