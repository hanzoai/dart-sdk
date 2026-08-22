//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProductEvent {
  /// Returns a new [ProductEvent] instance.
  ProductEvent({
    this.distinctId,
    this.event,
    this.id,
    this.path,
    this.product,
    this.properties,
    this.sessionId,
    this.timestamp,
    this.type,
    this.url,
  });
  /// DistinctID is the person/visitor the event is attributed to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctId;

  /// Event is the event name, e.g. page_viewed or signup_completed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  /// ID is the row's stable event id — the client's own idempotency id when it sent one, else the server-minted one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Path is the URL's path component, the key the topPages lens groups by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Product is the surface that emitted the event. Omitted when absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  Object? properties;

  /// SessionID groups the events of one visit. Omitted when the client sent none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sessionId;

  /// Timestamp is when the event happened, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  /// Type is the row's kind — the plane's discriminator: page, track, identify or group. (Errors are not here at all: they land on event.error and are read at /v1/event/errors.)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// URL is the full page address the event fired on. Omitted when absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProductEvent &&
    other.distinctId == distinctId &&
    other.event == event &&
    other.id == id &&
    other.path == path &&
    other.product == product &&
    other.properties == properties &&
    other.sessionId == sessionId &&
    other.timestamp == timestamp &&
    other.type == type &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distinctId == null ? 0 : distinctId!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (properties == null ? 0 : properties!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'ProductEvent[distinctId=$distinctId, event=$event, id=$id, path=$path, product=$product, properties=$properties, sessionId=$sessionId, timestamp=$timestamp, type=$type, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.distinctId != null) {
      json[r'distinctId'] = this.distinctId;
    } else {
      json[r'distinctId'] = null;
    }
    if (this.event != null) {
      json[r'event'] = this.event;
    } else {
      json[r'event'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.path != null) {
      json[r'path'] = this.path;
    } else {
      json[r'path'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.properties != null) {
      json[r'properties'] = this.properties;
    } else {
      json[r'properties'] = null;
    }
    if (this.sessionId != null) {
      json[r'sessionId'] = this.sessionId;
    } else {
      json[r'sessionId'] = null;
    }
    if (this.timestamp != null) {
      json[r'timestamp'] = this.timestamp;
    } else {
      json[r'timestamp'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [ProductEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProductEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProductEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProductEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProductEvent(
        distinctId: mapValueOfType<String>(json, r'distinctId'),
        event: mapValueOfType<String>(json, r'event'),
        id: mapValueOfType<String>(json, r'id'),
        path: mapValueOfType<String>(json, r'path'),
        product: mapValueOfType<String>(json, r'product'),
        properties: mapValueOfType<Object>(json, r'properties'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        type: mapValueOfType<String>(json, r'type'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<ProductEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProductEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProductEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProductEvent> mapFromJson(dynamic json) {
    final map = <String, ProductEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProductEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProductEvent-objects as value to a dart map
  static Map<String, List<ProductEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProductEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProductEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

