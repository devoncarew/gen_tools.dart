// Copyright (c) 2013, the gen_tools.dart project authors. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be found
// in the LICENSE file.

/* This file has been generated from context_menus.json - do not edit */

/**
 * Use the `chrome.contextMenus` API to add items to Google Chrome's context
 * menu. You can choose what types of objects your context menu additions apply
 * to, such as images, hyperlinks, and pages.
 */
library chrome.contextMenus;

import 'tabs.dart';
import '../src/common.dart';

/// Accessor for the `chrome.contextMenus` namespace.
final ChromeContextMenus contextMenus = new ChromeContextMenus._();

class ChromeContextMenus {
  JsObject _contextMenus;

  ChromeContextMenus._() {
    _contextMenus = context['chrome']['contextMenus'];
  }

  /**
   * Creates a new context menu item. Note that if an error occurs during
   * creation, you may not find out until the creation callback fires (the
   * details will be in chrome.runtime.lastError).
   * 
   * [callback] Called when the item has been created in the browser. If there
   * were any problems creating the item, details will be available in
   * chrome.runtime.lastError.
   * 
   * Returns:
   * The ID of the newly created item.
   */
  dynamic create(Map createProperties, [var callback]) {
    return _contextMenus.callMethod('create', [jsify(createProperties), callback]);
  }

  /**
   * Updates a previously created context menu item.
   * 
   * [id] The ID of the item to update.
   * 
   * [updateProperties] The properties to update. Accepts the same values as the
   * create function.
   */
  Future update(var id, Map updateProperties) {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _contextMenus.callMethod('update', [id, jsify(updateProperties), completer.callback]);
    return completer.future;
  }

  /**
   * Removes a context menu item.
   * 
   * [menuItemId] The ID of the context menu item to remove.
   */
  Future remove(var menuItemId) {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _contextMenus.callMethod('remove', [menuItemId, completer.callback]);
    return completer.future;
  }

  /**
   * Removes all context menu items added by this extension.
   */
  Future removeAll() {
    ChromeCompleter completer = new ChromeCompleter.noArgs();
    _contextMenus.callMethod('removeAll', [completer.callback]);
    return completer.future;
  }

  /**
   * Fired when a context menu item is clicked.
   */
  Stream<dynamic> get onClicked => _onClicked.stream;

  // TODO:
  final ChromeStreamController<dynamic> _onClicked = null;
}

/**
 * Information sent when a context menu item is clicked.
 */
class OnClickData extends ChromeObject {
  static OnClickData create(JsObject proxy) => new OnClickData(proxy);

  OnClickData(JsObject proxy): super(proxy);

  /**
   * The ID of the menu item that was clicked.
   */
  dynamic get menuItemId => this.proxy['menuItemId'];

  /**
   * The parent ID, if any, for the item clicked.
   */
  dynamic get parentMenuItemId => this.proxy['parentMenuItemId'];

  /**
   * One of 'image', 'video', or 'audio' if the context menu was activated on
   * one of these types of elements.
   */
  String get mediaType => this.proxy['mediaType'];

  /**
   * If the element is a link, the URL it points to.
   */
  String get linkUrl => this.proxy['linkUrl'];

  /**
   * Will be present for elements with a 'src' URL.
   */
  String get srcUrl => this.proxy['srcUrl'];

  /**
   * The URL of the page where the menu item was clicked. This property is not
   * set if the click occured in a context where there is no current page, such
   * as in a launcher context menu.
   */
  String get pageUrl => this.proxy['pageUrl'];

  /**
   * The URL of the frame of the element where the context menu was clicked, if
   * it was in a frame.
   */
  String get frameUrl => this.proxy['frameUrl'];

  /**
   * The text for the context selection, if any.
   */
  String get selectionText => this.proxy['selectionText'];

  /**
   * A flag indicating whether the element is editable (text input, textarea,
   * etc.).
   */
  bool get editable => this.proxy['editable'];

  /**
   * A flag indicating the state of a checkbox or radio item before it was
   * clicked.
   */
  bool get wasChecked => this.proxy['wasChecked'];

  /**
   * A flag indicating the state of a checkbox or radio item after it is
   * clicked.
   */
  bool get checked => this.proxy['checked'];
}
