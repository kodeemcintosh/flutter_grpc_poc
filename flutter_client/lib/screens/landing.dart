import 'package:flutter/material.dart';
import '../widgets/user_mode_switch.dart';
import '../blocs/navigation_bloc.dart';

class LandingPage extends StatefulWidget {
  LandingPage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _LandingPageState createState() => _LandingPageState();
}

class _LandingPageState extends State<LandingPage> {
  NavigationBloc _navigationBloc;

  @override
  void initState() {
    super.initState();
    _navigationBloc = NavigationBloc();
  }
  @override
  void dispose() {
    _navigationBloc.close();
    super.dispose();
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
        actions: <Widget>[
          UserModeSwitch()
        ],
      ),
      body: StreamBuilder(
        stream: ,
      ),
    );
  }
}