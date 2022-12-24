import 'dart:async';

class DebounceTimer {
  Timer? _timer;
  bool canAction = true;
  void debounceMethod({
    required int delayInMilliseconds,
    required Function() action,
  }) {
    if (_timer?.isActive == true) {
      _timer?.cancel();
    }
    _timer = Timer(Duration(milliseconds: delayInMilliseconds), action);
  }

  Future<void> delayActionMethod({
    required int delayInMilliseconds,
    required Function() action,
  }) async {
    if (canAction == false) {
      return;
    }
    action();
    canAction = false;
    await Future.delayed(Duration(milliseconds: delayInMilliseconds));
    canAction = true;

    // if (_timer?.isActive == true) {
    //   _timer?.cancel();
    // }
    // _timer = Timer(Duration(milliseconds: delayInMilliseconds), action);
  }

  void dispose() {
    _timer?.cancel();
  }
}
