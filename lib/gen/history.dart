// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from history.json - do not edit */

/**
 * Use the `chrome.history` API to interact with the browser's record of visited
 * pages. You can add, remove, and query for URLs in the browser's history. To
 * override the history page with your own version, see [Override
 * Pages](override.html).
 */
library chrome.history;

import '../src/common.dart';

/// Accessor for the `chrome.history` namespace.
final ChromeHistory history = new ChromeHistory._();

class ChromeHistory {
  JsObject _history;

  ChromeHistory._() {
    _history = context['chrome']['history'];
  }

  /**
   * Searches the history for the last visit time of each page matching the
   * query.
   */
  Future<List<dynamic>> search(Map query) {
    ChromeCompleter completer = new ChromeCompleter.oneArg(selfConverter);
    _history.callMethod('search', [jsify(query), completer.callback]);
    return completer.future;
  }

  /**
   * Retrieves information about visits to a URL.
   */
  Future<List<dynamic>> getVisits(Map details) {
    ChromeCompleter completer = new ChromeCompleter.oneArg(selfConverter);
    _history.callMethod('getVisits', [jsify(details), completer.callback]);
    return completer.future;
  }

  /**
   * Adds a URL to the history at the current time with a [transition
   * type](#transition_types) of "link".
   */
  Future addUrl(Map details) {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _history.callMethod('addUrl', [jsify(details), completer.callback]);
    return completer.future;
  }

  /**
   * Removes all occurrences of the given URL from the history.
   */
  Future deleteUrl(Map details) {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _history.callMethod('deleteUrl', [jsify(details), completer.callback]);
    return completer.future;
  }

  /**
   * Removes all items within the specified date range from the history.  Pages
   * will not be removed from the history unless all visits fall within the
   * range.
   */
  Future deleteRange(Map range) {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _history.callMethod('deleteRange', [jsify(range), completer.callback]);
    return completer.future;
  }

  /**
   * Deletes all items from the history.
   */
  Future deleteAll() {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _history.callMethod('deleteAll', [completer.callback]);
    return completer.future;
  }

  /**
   * Fired when a URL is visited, providing the HistoryItem data for that URL.
   * This event fires before the page has loaded.
   */
  Stream<dynamic> get onVisited => _onVisited.stream;

  // TODO:
  final ChromeStreamController<dynamic> _onVisited = null;

  /**
   * Fired when one or more URLs are removed from the history service.  When all
   * visits have been removed the URL is purged from history.
   */
  Stream<dynamic> get onVisitRemoved => _onVisitRemoved.stream;

  // TODO:
  final ChromeStreamController<dynamic> _onVisitRemoved = null;
}

/**
 * An object encapsulating one result of a history query.
 */
class HistoryItem extends ChromeObject {
  HistoryItem(JsObject proxy): super(proxy);
  // TODO:
}

/**
 * An object encapsulating one visit to a URL.
 */
class VisitItem extends ChromeObject {
  VisitItem(JsObject proxy): super(proxy);
  // TODO:
}
