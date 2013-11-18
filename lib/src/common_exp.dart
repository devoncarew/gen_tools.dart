
library chrome.src.common_exp;

import 'dart:js';

/**
 * The abstract superclass of objects that can hold [JsObject] proxies.
 */
class ChromeObject {
  final JsObject jsProxy;

  /**
   * Create a new instance of a `ChromeObject`, which creates and delegates to
   * a JsObject proxy.
   */
  ChromeObject() : jsProxy = new JsObject(context['Object']);

  /**
   * Create a new instance of a `ChromeObject`, which delegates to the given
   * JsObject proxy.
   */
  ChromeObject.fromProxy(this.jsProxy);

  JsObject toJs() => jsProxy;

  String toString() => jsProxy.toString();
}

/**
 * A common super class for the Chrome APIs.
 */
abstract class ChromeApi {
  /**
   * Returns true if the API is available. The common causes of an API not being
   * avilable are:
   *
   *  * a permission is missing in the application's manifest.json file
   *  * the API is defined on a newer version of Chrome then the current runtime
   */
  bool get available;
}

/**
 * The abstract superclass of Chrome enums.
 */
abstract class ChromeEnum {
  final String value;

  const ChromeEnum(this.value);

  String toString() => value;
}

// This is chared in common by app.window and system.display.
class Bounds extends ChromeObject {
  static Bounds create(JsObject jsProxy) => jsProxy == null ? null : new Bounds.fromProxy(jsProxy);

  Bounds();
  Bounds.fromProxy(JsObject jsProxy): super.fromProxy(jsProxy);

  int get left => jsProxy['left'];
  set left(int value) => jsProxy['left'] = value;

  int get top => jsProxy['top'];
  set top(int value) => jsProxy['top'] = value;

  int get width => jsProxy['width'];
  set width(int value) => jsProxy['width'] = value;

  int get height => jsProxy['height'];
  set height(int value) => jsProxy['height'] = value;
}

class ArrayBuffer extends ChromeObject {
  static ArrayBuffer create(JsObject jsProxy) => new ArrayBuffer.fromProxy(jsProxy);

  ArrayBuffer();
  ArrayBuffer.fromProxy(JsObject jsProxy): super.fromProxy(jsProxy);

  factory ArrayBuffer.fromBytes(List<int> data) {
    var uint8Array = new JsObject(context['Uint8Array'], [new JsObject.jsify(data)]);

    return new ArrayBuffer.fromProxy(uint8Array['buffer']);
  }

  factory ArrayBuffer.fromString(String str) {
    var uint8Array = new JsObject(context['Uint8Array'], [new JsObject.jsify(str.codeUnits)]);

    return new ArrayBuffer.fromProxy(uint8Array['buffer']);
  }

  List<int> getBytes() {
    var int8View = new JsObject(context['Uint8Array'], [jsProxy]);

    List<int> result = new List<int>(int8View['length']);

    // TODO: this is _very_ slow
    // can we instead do: jsArray = Array.apply([], int8View);
    for (int i = 0; i < result.length; i++) {
      result[i] = int8View[i];
    }

    return result;
  }
}

// TODO: this is a hack, to eliminate analysis warnings. remove as soon as possible
class DeviceCallback {
  DeviceCallback.fromProxy(JsObject jsProxy);
}

// TODO: this is a hack, to eliminate analysis warnings. remove as soon as possible
class SuggestFilenameCallback {
  SuggestFilenameCallback.fromProxy(JsObject jsProxy);
}

// TODO:
class LocalMediaStream extends ChromeObject {
  static LocalMediaStream create(JsObject jsProxy) => new LocalMediaStream.fromProxy(jsProxy);

  LocalMediaStream();
  LocalMediaStream.fromProxy(JsObject jsProxy): super.fromProxy(jsProxy);
}
