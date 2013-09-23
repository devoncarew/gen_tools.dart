/* This file has been generated from storage.json - do not edit */

/**
 * Use the `chrome.storage` API to store, retrieve, and track changes to user
 * data.
 */
library chrome.storage;

import '../src/common.dart';

/// Accessor for the `chrome.storage` namespace.
final ChromeStorage storage = new ChromeStorage._();

class ChromeStorage {
  static final JsObject _storage = context['chrome']['storage'];

  ChromeStorage._();

  /**
   * Items in the `sync` storage area are synced using Chrome Sync.
   */
  StorageArea get sync => new StorageArea(_storage['sync']);

  /**
   * Items in the `local` storage area are local to each machine.
   */
  StorageArea get local => new StorageArea(_storage['local']);

  /**
   * Fired when one or more items change.
   */
  Stream<OnChangedEvent> get onChanged => _onChanged.stream;

  final ChromeStreamController<OnChangedEvent> _onChanged =
      new ChromeStreamController<OnChangedEvent>.twoArgs(_storage['onChanged'], OnChangedEvent.create);
}

/**
 * Fired when one or more items change.
 */
class OnChangedEvent {
  static OnChangedEvent create(JsObject changes, String areaName) =>
      new OnChangedEvent(mapify(changes), areaName);

  /**
   * Object mapping each key that changed to its corresponding [StorageChange]
   * for that item.
   */
  Map changes;

  /**
   * The name of the storage area (`sync` or `local`) the changes are for.
   */
  String areaName;

  OnChangedEvent(this.changes, this.areaName);
}

class StorageChange extends ChromeObject {
  static StorageChange create(JsObject proxy) => proxy == null ? null : new StorageChange(proxy);

  StorageChange(JsObject proxy): super(proxy);

  /**
   * The old value of the item, if there was an old value.
   */
  dynamic get oldValue => proxy['oldValue'];

  /**
   * The new value of the item, if there is a new value.
   */
  dynamic get newValue => proxy['newValue'];
}

class StorageArea extends ChromeObject {
  static StorageArea create(JsObject proxy) => proxy == null ? null : new StorageArea(proxy);

  StorageArea(JsObject proxy): super(proxy);
}