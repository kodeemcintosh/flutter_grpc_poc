import 'package:flutter/material.dart';

class UserModeSwitch extends StatefulWidget {
  UserModeSwitch({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _UserModeSwitchState createState() => _UserModeSwitchState();
}

class _UserModeSwitchState extends State<UserModeSwitch> {
  bool _isActive = false;

  void _toggleSwitch(bool next) {
    setState(() {
      _isActive = next;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Switch(
      value: _isActive,
      onChanged: (bool next) => _toggleSwitch(next),
    );
  }
}