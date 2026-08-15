//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CapturedError {
  /// Returns a new [CapturedError] instance.
  CapturedError({
    this.distinctId,
    this.event,
    this.exception,
    this.id,
    this.library_,
    this.libraryVersion,
    this.path,
    this.product,
    this.properties,
    this.sessionId,
    this.timestamp,
    this.url,
  });

  /// DistinctID is the person/visitor the error is attributed to. Omitted when the row carries none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? distinctId;

  /// Event is the event name the error was stored under, e.g. $error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? event;

  Object? exception;

  /// ID is the row's stable event id — the client's own idempotency id when it sent one, else the server-minted one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Library is the client SDK that reported the error. Omitted when absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? library_;

  /// LibraryVer is that SDK's version. Omitted when absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? libraryVersion;

  /// Path is the URL's path component. Omitted when absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? path;

  /// Product is the surface that emitted the error. Omitted when absent.
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

  /// Timestamp is when the error was captured, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? timestamp;

  /// URL is the full page address the error fired on. Omitted when absent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CapturedError &&
    other.distinctId == distinctId &&
    other.event == event &&
    other.exception == exception &&
    other.id == id &&
    other.library_ == library_ &&
    other.libraryVersion == libraryVersion &&
    other.path == path &&
    other.product == product &&
    other.properties == properties &&
    other.sessionId == sessionId &&
    other.timestamp == timestamp &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (distinctId == null ? 0 : distinctId!.hashCode) +
    (event == null ? 0 : event!.hashCode) +
    (exception == null ? 0 : exception!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (library_ == null ? 0 : library_!.hashCode) +
    (libraryVersion == null ? 0 : libraryVersion!.hashCode) +
    (path == null ? 0 : path!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (properties == null ? 0 : properties!.hashCode) +
    (sessionId == null ? 0 : sessionId!.hashCode) +
    (timestamp == null ? 0 : timestamp!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'CapturedError[distinctId=$distinctId, event=$event, exception=$exception, id=$id, library_=$library_, libraryVersion=$libraryVersion, path=$path, product=$product, properties=$properties, sessionId=$sessionId, timestamp=$timestamp, url=$url]';

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
    if (this.exception != null) {
      json[r'exception'] = this.exception;
    } else {
      json[r'exception'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.library_ != null) {
      json[r'library'] = this.library_;
    } else {
      json[r'library'] = null;
    }
    if (this.libraryVersion != null) {
      json[r'libraryVersion'] = this.libraryVersion;
    } else {
      json[r'libraryVersion'] = null;
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
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [CapturedError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CapturedError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CapturedError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CapturedError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CapturedError(
        distinctId: mapValueOfType<String>(json, r'distinctId'),
        event: mapValueOfType<String>(json, r'event'),
        exception: mapValueOfType<Object>(json, r'exception'),
        id: mapValueOfType<String>(json, r'id'),
        library_: mapValueOfType<String>(json, r'library'),
        libraryVersion: mapValueOfType<String>(json, r'libraryVersion'),
        path: mapValueOfType<String>(json, r'path'),
        product: mapValueOfType<String>(json, r'product'),
        properties: mapValueOfType<Object>(json, r'properties'),
        sessionId: mapValueOfType<String>(json, r'sessionId'),
        timestamp: mapValueOfType<String>(json, r'timestamp'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<CapturedError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CapturedError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CapturedError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CapturedError> mapFromJson(dynamic json) {
    final map = <String, CapturedError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CapturedError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CapturedError-objects as value to a dart map
  static Map<String, List<CapturedError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CapturedError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CapturedError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

