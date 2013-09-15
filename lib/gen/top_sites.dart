// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from top_sites.json - do not edit */

/**
 * Use the `chrome.topSites` API to access the top sites that are displayed on
 * the new tab page.
 */
library chrome.topSites;

import '../src/common.dart';

/// Accessor for the `chrome.topSites` namespace.
final ChromeTopSites topSites = new ChromeTopSites._();

class ChromeTopSites {
  JsObject _topSites;

  ChromeTopSites._() {
    _topSites = context['chrome']['topSites'];
  }

  /**
   * Gets a list of top sites.
   */
  Future<dynamic> get() {
    ChromeCompleter completer = new ChromeCompleter.oneArg((arg) {
      return arg;
    });
    _topSites.callMethod('get', [completer.callback]);
    return completer.future;
  }
}