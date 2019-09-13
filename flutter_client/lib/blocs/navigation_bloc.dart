import 'dart:async';

import 'package:rxdart/rxdart.dart';

enum UserMode {
  CUSTOMER,
  SUPPLIER
}

class NavigationBloc {
  // final _repository = Repository();
  final StreamController _navigationController = StreamController.broadcast();

  void selectTab(bool isActive) {
    switch(isActive) {
      case false:
        _navigationController.sink.add(UserMode.CUSTOMER);
        break;
      case true:
        _navigationController.sink.add(UserMode.SUPPLIER);
        break;
    }
  }
  close() {
    _navigationController?.close();
  }
}