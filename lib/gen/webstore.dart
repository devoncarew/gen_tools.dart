/* This file has been generated from webstore.json - do not edit */

/**
 * Use the `chrome.webstore` API to initiate app and extension installations
 * "inline" from your site.
 */
library chrome.webstore;

import '../src/common.dart';

/// Accessor for the `chrome.webstore` namespace.
final ChromeWebstore webstore = (ChromeWebstore._webstore == null ? null : new ChromeWebstore._());

class ChromeWebstore {
  static final JsObject _webstore = context['chrome']['webstore'];

  ChromeWebstore._();

  bool get available => _webstore != null;

  void install([String url, dynamic successCallback, dynamic failureCallback]) {
    _webstore.callMethod('install', [url, successCallback, failureCallback]);
  }
}
