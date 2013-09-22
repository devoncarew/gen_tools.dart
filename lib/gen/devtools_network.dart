// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from network.json - do not edit */

/**
 * Use the `chrome.devtools.network` API to retrieve the information about
 * network requests displayed by the Developer Tools in the Network panel.
 */
library chrome.devtools_network;

import '../src/common.dart';

/// Accessor for the `chrome.devtools.network` namespace.
final ChromeDevtoolsNetwork devtools_network = new ChromeDevtoolsNetwork._();

class ChromeDevtoolsNetwork {
  static final JsObject _devtools_network = context['chrome']['devtools']['network'];

  ChromeDevtoolsNetwork._();

  /**
   * Returns HAR log that contains all known network requests.
   * 
   * Returns:
   * A HAR log. See HAR specification for details.
   */
  Future<Map> getHAR() {
    ChromeCompleter completer = new ChromeCompleter.oneArg(mapify);
    _devtools_network.callMethod('getHAR', [completer.callback]);
    return completer.future;
  }

  /**
   * Fired when a network request is finished and all request data are
   * available.
   */
  Stream<Request> get onRequestFinished => _onRequestFinished.stream;

  final ChromeStreamController<Request> _onRequestFinished =
      new ChromeStreamController<Request>.oneArg(_devtools_network['onRequestFinished'], Request.create);

  /**
   * Fired when the inspected window navigates to a new page.
   */
  Stream<String> get onNavigated => _onNavigated.stream;

  final ChromeStreamController<String> _onNavigated =
      new ChromeStreamController<String>.oneArg(_devtools_network['onNavigated'], selfConverter);
}

/**
 * Represents a network request for a document resource (script, image and so
 * on). See HAR Specification for reference.
 */
class Request extends ChromeObject {
  static Request create(JsObject proxy) => new Request(proxy);

  Request(JsObject proxy): super(proxy);
}
