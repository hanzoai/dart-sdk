//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NextIn {
  /// Returns a new [NextIn] instance.
  NextIn({
    this.batch,
    this.expires,
    this.name,
    this.noWait,
    this.stream,
  });
  /// Batch is how many messages to pull (1–1000, default 1).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? batch;

  /// Expires is how long to wait for messages, e.g. \"5s\" (default \"30s\", max \"60s\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? expires;

  /// Name is the consumer name, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// NoWait answers immediately with whatever is available instead of waiting.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? noWait;

  /// Stream is the stream name, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NextIn &&
    other.batch == batch &&
    other.expires == expires &&
    other.name == name &&
    other.noWait == noWait &&
    other.stream == stream;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batch == null ? 0 : batch!.hashCode) +
    (expires == null ? 0 : expires!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (noWait == null ? 0 : noWait!.hashCode) +
    (stream == null ? 0 : stream!.hashCode);

  @override
  String toString() => 'NextIn[batch=$batch, expires=$expires, name=$name, noWait=$noWait, stream=$stream]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.batch != null) {
      json[r'batch'] = this.batch;
    } else {
      json[r'batch'] = null;
    }
    if (this.expires != null) {
      json[r'expires'] = this.expires;
    } else {
      json[r'expires'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.noWait != null) {
      json[r'no_wait'] = this.noWait;
    } else {
      json[r'no_wait'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    return json;
  }

  /// Returns a new [NextIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NextIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NextIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NextIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NextIn(
        batch: mapValueOfType<int>(json, r'batch'),
        expires: mapValueOfType<String>(json, r'expires'),
        name: mapValueOfType<String>(json, r'name'),
        noWait: mapValueOfType<bool>(json, r'no_wait'),
        stream: mapValueOfType<String>(json, r'stream'),
      );
    }
    return null;
  }

  static List<NextIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NextIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NextIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NextIn> mapFromJson(dynamic json) {
    final map = <String, NextIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NextIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NextIn-objects as value to a dart map
  static Map<String, List<NextIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NextIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NextIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

