// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from page_capture.json - do not edit */

/**
 * Use the `chrome.pageCapture` API to save a tab as MHTML.
 */
library chrome.pageCapture;

import '../src/common.dart';

/// Accessor for the `chrome.pageCapture` namespace.
final ChromePageCapture pageCapture = new ChromePageCapture._();

class ChromePageCapture {
  static final JsObject _pageCapture = context['chrome']['pageCapture'];

  ChromePageCapture._();

  /**
   * Saves the content of the tab with given id as MHTML.
   * 
   * [details] `tabId` The id of the tab to save as MHTML.
   * 
   * Returns:
   * The MHTML data as a Blob.
   */
  Future<dynamic> saveAsMHTML(Map details) {
    ChromeCompleter completer = new ChromeCompleter.oneArg();
    _pageCapture.callMethod('saveAsMHTML', [jsify(details), completer.callback]);
    return completer.future;
  }
}
