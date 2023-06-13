import 'package:flutter/material.dart';
import 'package:ihtl_two/data/repositories/counter_repository.dart';

class MainScreenProvider with ChangeNotifier {
  int _count = 0;

  int get getCount => _count;

  var counterRepo = CounterRepository();

  void increment() {
    _count = counterRepo.increment(_count);
    notifyListeners();
  }
}
