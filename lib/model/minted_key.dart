//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MintedKey {
  /// Returns a new [MintedKey] instance.
  MintedKey({
    this.accessKey,
    this.key,
    this.limit = const [],
    this.type,
  });
  /// AccessKey is the same value under its predecessor name, carried so callers written against the older field keep working. One value, two names.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? accessKey;

  /// Key is the credential, returned ONCE — a secret key is unreadable afterwards.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Limit is what the minted key may reach, echoed back so the caller can see the narrowing took. Absent means unrestricted.
  List<String> limit;

  /// Type is the class of key that was minted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MintedKey &&
    other.accessKey == accessKey &&
    other.key == key &&
    _deepEquality.equals(other.limit, limit) &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accessKey == null ? 0 : accessKey!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (limit.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'MintedKey[accessKey=$accessKey, key=$key, limit=$limit, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accessKey != null) {
      json[r'accessKey'] = this.accessKey;
    } else {
      json[r'accessKey'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
      json[r'limit'] = this.limit;
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [MintedKey] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MintedKey? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MintedKey[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MintedKey[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MintedKey(
        accessKey: mapValueOfType<String>(json, r'accessKey'),
        key: mapValueOfType<String>(json, r'key'),
        limit: json[r'limit'] is Iterable
            ? (json[r'limit'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<MintedKey> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MintedKey>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MintedKey.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MintedKey> mapFromJson(dynamic json) {
    final map = <String, MintedKey>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MintedKey.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MintedKey-objects as value to a dart map
  static Map<String, List<MintedKey>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MintedKey>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MintedKey.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

