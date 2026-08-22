//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yLimit {
  /// Returns a new [O11yLimit] instance.
  O11yLimit({
    this.config,
    this.createdAt,
    this.id,
    this.keyId,
    this.metric,
    this.signal,
    this.tags = const [],
    this.updatedAt,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLimitConfig? config;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? keyId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yLimitMetric? metric;

  /// \"logs\", \"traces\", \"metrics\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? signal;

  List<String> tags;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  DateTime? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yLimit &&
    other.config == config &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.keyId == keyId &&
    other.metric == metric &&
    other.signal == signal &&
    _deepEquality.equals(other.tags, tags) &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config == null ? 0 : config!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (keyId == null ? 0 : keyId!.hashCode) +
    (metric == null ? 0 : metric!.hashCode) +
    (signal == null ? 0 : signal!.hashCode) +
    (tags.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'O11yLimit[config=$config, createdAt=$createdAt, id=$id, keyId=$keyId, metric=$metric, signal=$signal, tags=$tags, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.createdAt != null) {
      json[r'created_at'] = this.createdAt!.toUtc().toIso8601String();
    } else {
      json[r'created_at'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.keyId != null) {
      json[r'key_id'] = this.keyId;
    } else {
      json[r'key_id'] = null;
    }
    if (this.metric != null) {
      json[r'metric'] = this.metric;
    } else {
      json[r'metric'] = null;
    }
    if (this.signal != null) {
      json[r'signal'] = this.signal;
    } else {
      json[r'signal'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.updatedAt != null) {
      json[r'updated_at'] = this.updatedAt!.toUtc().toIso8601String();
    } else {
      json[r'updated_at'] = null;
    }
    return json;
  }

  /// Returns a new [O11yLimit] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yLimit? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yLimit[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yLimit[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yLimit(
        config: O11yLimitConfig.fromJson(json[r'config']),
        createdAt: mapDateTime(json, r'created_at', r''),
        id: mapValueOfType<String>(json, r'id'),
        keyId: mapValueOfType<String>(json, r'key_id'),
        metric: O11yLimitMetric.fromJson(json[r'metric']),
        signal: mapValueOfType<String>(json, r'signal'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapDateTime(json, r'updated_at', r''),
      );
    }
    return null;
  }

  static List<O11yLimit> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yLimit>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yLimit.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yLimit> mapFromJson(dynamic json) {
    final map = <String, O11yLimit>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yLimit.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yLimit-objects as value to a dart map
  static Map<String, List<O11yLimit>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yLimit>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yLimit.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

