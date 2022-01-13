import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

void main() => runApp(LoginPage());

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: Scaffold(
        appBar: CupertinoNavigationBar(
          middle: Text('Login page'),
        ),
        body: UsernameField(),
      ),
    );
  }
}

class UsernameField extends StatefulWidget {
  const UsernameField({Key? key}) : super(key: key);

  @override
  State<UsernameField> createState() => _UsernameField();
}

class _UsernameField extends State<UsernameField> {
  late TextEditingController _usernameTextController;

  @override
  void initState() {
    super.initState();
    _usernameTextController = TextEditingController(text: 'username');
  }

  @override
  Widget build(BuildContext context) {
    return CupertinoTextField(controller: _usernameTextController);
  }
}