//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KmsSecrets {
  /// Returns a new [KmsSecrets] instance.
  KmsSecrets({
    this.names = const [],
    this.secrets = const [],
    this.total,
  });
  /// Names is the same listing reduced to bare names, which is the shape the KMS operator reads. Both are emitted so either consumer keeps working.
  List<String> names;

  /// Secrets are the descriptors: name, path, environment and sealing scheme. No value and no ciphertext appears here.
  List<SecretMeta> secrets;

  /// Total is how many descriptors this listing carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KmsSecrets &&
    _deepEquality.equals(other.names, names) &&
    _deepEquality.equals(other.secrets, secrets) &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (names.hashCode) +
    (secrets.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'KmsSecrets[names=$names, secrets=$secrets, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'names'] = this.names;
      json[r'secrets'] = this.secrets;
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [KmsSecrets] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KmsSecrets? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KmsSecrets[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KmsSecrets[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KmsSecrets(
        names: json[r'names'] is Iterable
            ? (json[r'names'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        secrets: SecretMeta.listFromJson(json[r'secrets']),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<KmsSecrets> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KmsSecrets>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KmsSecrets.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KmsSecrets> mapFromJson(dynamic json) {
    final map = <String, KmsSecrets>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KmsSecrets.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KmsSecrets-objects as value to a dart map
  static Map<String, List<KmsSecrets>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KmsSecrets>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KmsSecrets.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

