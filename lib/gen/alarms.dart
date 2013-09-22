// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from alarms.idl - do not edit */

/**
 * 
 */
library chrome.alarms;

import '../src/common.dart';

/// Accessor for the `chrome.alarms` namespace.
final ChromeAlarms alarms = new ChromeAlarms._();

class ChromeAlarms {
  static final JsObject _alarms = context['chrome']['alarms'];

  ChromeAlarms._();

  void create(AlarmCreateInfo alarmInfo, [String name]) {
    _alarms.callMethod('create', [name, alarmInfo]);
  }

  Future get([String name]) {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _alarms.callMethod('get', [name, completer.callback]);
    return completer.future;
  }

  Future getAll() {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _alarms.callMethod('getAll', [completer.callback]);
    return completer.future;
  }

  void clear([String name]) {
    _alarms.callMethod('clear', [name]);
  }

  void clearAll() {
    _alarms.callMethod('clearAll');
  }

  Stream<Alarm> get onAlarm => _onAlarm.stream;

  final ChromeStreamController<Alarm> _onAlarm =
      new ChromeStreamController<Alarm>.oneArg(_alarms['onAlarm'], selfConverter);
}
