//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FetchQuery {
  /// Returns a new [FetchQuery] instance.
  FetchQuery({
    this.batch,
    this.name,
    this.stream,
    this.waitMs,
  });

  /// Batch is the most messages to return. 0 or less means 1; anything above 100 is clamped to 100.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? batch;

  /// Name is the consumer, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Stream is the stream, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stream;

  /// WaitMs is how long to wait for the batch to fill before answering with what arrived. 0 or less means the default of 5000; clamped to 30000.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? waitMs;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FetchQuery &&
    other.batch == batch &&
    other.name == name &&
    other.stream == stream &&
    other.waitMs == waitMs;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batch == null ? 0 : batch!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (stream == null ? 0 : stream!.hashCode) +
    (waitMs == null ? 0 : waitMs!.hashCode);

  @override
  String toString() => 'FetchQuery[batch=$batch, name=$name, stream=$stream, waitMs=$waitMs]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.batch != null) {
      json[r'batch'] = this.batch;
    } else {
      json[r'batch'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.stream != null) {
      json[r'stream'] = this.stream;
    } else {
      json[r'stream'] = null;
    }
    if (this.waitMs != null) {
      json[r'waitMs'] = this.waitMs;
    } else {
      json[r'waitMs'] = null;
    }
    return json;
  }

  /// Returns a new [FetchQuery] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FetchQuery? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FetchQuery[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FetchQuery[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FetchQuery(
        batch: mapValueOfType<int>(json, r'batch'),
        name: mapValueOfType<String>(json, r'name'),
        stream: mapValueOfType<String>(json, r'stream'),
        waitMs: mapValueOfType<int>(json, r'waitMs'),
      );
    }
    return null;
  }

  static List<FetchQuery> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FetchQuery>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FetchQuery.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FetchQuery> mapFromJson(dynamic json) {
    final map = <String, FetchQuery>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FetchQuery.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FetchQuery-objects as value to a dart map
  static Map<String, List<FetchQuery>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FetchQuery>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FetchQuery.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

