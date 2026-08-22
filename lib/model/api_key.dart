//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ApiKey {
  /// Returns a new [ApiKey] instance.
  ApiKey({
    this.createdAt,
    this.key,
    this.limit = const [],
    this.prefix,
    this.type,
  });
  /// CreatedAt is when the key last changed, as IAM records it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Key is the FULL value, and is present for a publishable key only: it is public by construction and useless to its holder if it cannot be read back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Limit is what this key may reach, as `kind:name` entries — `model:zen5`, `project:acme`, `product:commerce`. Absent means the key reaches whatever its holder does, which is what every key minted before limits existed does and must keep doing.
  List<String> limit;

  /// Prefix is the recognizable, non-secret head of the key — enough to tell two keys apart, never enough to use one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prefix;

  /// Type is the key class: secret (sk-) or publishable (pk-).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApiKey &&
    other.createdAt == createdAt &&
    other.key == key &&
    _deepEquality.equals(other.limit, limit) &&
    other.prefix == prefix &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (limit.hashCode) +
    (prefix == null ? 0 : prefix!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ApiKey[createdAt=$createdAt, key=$key, limit=$limit, prefix=$prefix, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
      json[r'limit'] = this.limit;
    if (this.prefix != null) {
      json[r'prefix'] = this.prefix;
    } else {
      json[r'prefix'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ApiKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApiKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApiKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApiKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApiKey(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        key: mapValueOfType<String>(json, r'key'),
        limit: json[r'limit'] is Iterable
            ? (json[r'limit'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        prefix: mapValueOfType<String>(json, r'prefix'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ApiKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApiKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApiKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApiKey> mapFromJson(dynamic json) {
    final map = <String, ApiKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApiKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApiKey-objects as value to a dart map
  static Map<String, List<ApiKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApiKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApiKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

