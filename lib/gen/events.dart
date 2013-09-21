// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from events.json - do not edit */

/**
 * Use the `chrome.events` API to notify you when something interesting happens.
 */
library chrome.events;

import '../src/common.dart';

/// Accessor for the `chrome.events` namespace.
final ChromeEvents events = new ChromeEvents._();

class ChromeEvents {
  JsObject _events;

  ChromeEvents._() {
    _events = context['chrome']['events'];
  }
}

/**
 * Description of a declarative rule for handling events.
 */
class Rule extends ChromeObject {
  static Rule create(JsObject proxy) => new Rule(proxy);

  Rule(JsObject proxy): super(proxy);

  /**
   * Optional identifier that allows referencing this rule.
   */
  String get id => this.proxy['id'];

  /**
   * Tags can be used to annotate rules and perform operations on sets of rules.
   */
  List<String> get tags => listify(this.proxy['tags']);

  /**
   * List of conditions that can trigger the actions.
   */
  List<dynamic> get conditions => listify(this.proxy['conditions']);

  /**
   * List of actions that are triggered if one of the condtions is fulfilled.
   */
  List<dynamic> get actions => listify(this.proxy['actions']);

  /**
   * Optional priority of this rule. Defaults to 100.
   */
  int get priority => this.proxy['priority'];
}

/**
 * An object which allows the addition and removal of listeners for a Chrome
 * event.
 */
class Event extends ChromeObject {
  static Event create(JsObject proxy) => new Event(proxy);

  Event(JsObject proxy): super(proxy);
}

/**
 * Filters URLs for various criteria. See [event filtering](#filtered). All
 * criteria are case sensitive.
 */
class UrlFilter extends ChromeObject {
  static UrlFilter create(JsObject proxy) => new UrlFilter(proxy);

  UrlFilter(JsObject proxy): super(proxy);

  /**
   * Matches if the host name of the URL contains a specified string. To test
   * whether a host name component has a prefix 'foo', use hostContains: '.foo'.
   * This matches 'www.foobar.com' and 'foo.com', because an implicit dot is
   * added at the beginning of the host name. Similarly, hostContains can be
   * used to match against component suffix ('foo.') and to exactly match
   * against components ('.foo.'). Suffix- and exact-matching for the last
   * components need to be done separately using hostSuffix, because no implicit
   * dot is added at the end of the host name.
   */
  String get hostContains => this.proxy['hostContains'];

  /**
   * Matches if the host name of the URL is equal to a specified string.
   */
  String get hostEquals => this.proxy['hostEquals'];

  /**
   * Matches if the host name of the URL starts with a specified string.
   */
  String get hostPrefix => this.proxy['hostPrefix'];

  /**
   * Matches if the host name of the URL ends with a specified string.
   */
  String get hostSuffix => this.proxy['hostSuffix'];

  /**
   * Matches if the path segment of the URL contains a specified string.
   */
  String get pathContains => this.proxy['pathContains'];

  /**
   * Matches if the path segment of the URL is equal to a specified string.
   */
  String get pathEquals => this.proxy['pathEquals'];

  /**
   * Matches if the path segment of the URL starts with a specified string.
   */
  String get pathPrefix => this.proxy['pathPrefix'];

  /**
   * Matches if the path segment of the URL ends with a specified string.
   */
  String get pathSuffix => this.proxy['pathSuffix'];

  /**
   * Matches if the query segment of the URL contains a specified string.
   */
  String get queryContains => this.proxy['queryContains'];

  /**
   * Matches if the query segment of the URL is equal to a specified string.
   */
  String get queryEquals => this.proxy['queryEquals'];

  /**
   * Matches if the query segment of the URL starts with a specified string.
   */
  String get queryPrefix => this.proxy['queryPrefix'];

  /**
   * Matches if the query segment of the URL ends with a specified string.
   */
  String get querySuffix => this.proxy['querySuffix'];

  /**
   * Matches if the URL (without fragment identifier) contains a specified
   * string. Port numbers are stripped from the URL if they match the default
   * port number.
   */
  String get urlContains => this.proxy['urlContains'];

  /**
   * Matches if the URL (without fragment identifier) is equal to a specified
   * string. Port numbers are stripped from the URL if they match the default
   * port number.
   */
  String get urlEquals => this.proxy['urlEquals'];

  /**
   * Matches if the URL (without fragment identifier) matches a specified
   * regular expression. Port numbers are stripped from the URL if they match
   * the default port number. The regular expressions use the [RE2
   * syntax](http://code.google.com/p/re2/wiki/Syntax).
   */
  String get urlMatches => this.proxy['urlMatches'];

  /**
   * Matches if the URL without query segment and fragment identifier matches a
   * specified regular expression. Port numbers are stripped from the URL if
   * they match the default port number. The regular expressions use the [RE2
   * syntax](http://code.google.com/p/re2/wiki/Syntax).
   */
  String get originAndPathMatches => this.proxy['originAndPathMatches'];

  /**
   * Matches if the URL (without fragment identifier) starts with a specified
   * string. Port numbers are stripped from the URL if they match the default
   * port number.
   */
  String get urlPrefix => this.proxy['urlPrefix'];

  /**
   * Matches if the URL (without fragment identifier) ends with a specified
   * string. Port numbers are stripped from the URL if they match the default
   * port number.
   */
  String get urlSuffix => this.proxy['urlSuffix'];

  /**
   * Matches if the scheme of the URL is equal to any of the schemes specified
   * in the array.
   */
  List<String> get schemes => listify(this.proxy['schemes']);

  /**
   * Matches if the port of the URL is contained in any of the specified port
   * lists. For example `[80, 443, [1000, 1200]]` matches all requests on port
   * 80, 443 and in the range 1000-1200.
   */
  List<dynamic> get ports => listify(this.proxy['ports']);
}
