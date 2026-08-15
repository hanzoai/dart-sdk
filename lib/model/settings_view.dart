//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SettingsView {
  /// Returns a new [SettingsView] instance.
  SettingsView({
    this.config,
    this.createdAt,
    this.product,
    this.secretKeys = const [],
    this.updatedAt,
  });

  Object? config;

  /// CreatedAt is when this configuration was first written, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Product is the catalog slug this configuration belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// SecretKeys names the secret fields that ARE set. Their VALUES live only in KMS and are never returned here — the console renders a mask.
  List<String> secretKeys;

  /// UpdatedAt is when this configuration was last written, RFC 3339 UTC. Empty when nothing has been saved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SettingsView &&
    other.config == config &&
    other.createdAt == createdAt &&
    other.product == product &&
    _deepEquality.equals(other.secretKeys, secretKeys) &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config == null ? 0 : config!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (secretKeys.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'SettingsView[config=$config, createdAt=$createdAt, product=$product, secretKeys=$secretKeys, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.config != null) {
      json[r'config'] = this.config;
    } else {
      json[r'config'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
      json[r'secretKeys'] = this.secretKeys;
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [SettingsView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SettingsView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SettingsView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SettingsView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SettingsView(
        config: mapValueOfType<Object>(json, r'config'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        product: mapValueOfType<String>(json, r'product'),
        secretKeys: json[r'secretKeys'] is Iterable
            ? (json[r'secretKeys'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<SettingsView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SettingsView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SettingsView> mapFromJson(dynamic json) {
    final map = <String, SettingsView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SettingsView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SettingsView-objects as value to a dart map
  static Map<String, List<SettingsView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SettingsView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SettingsView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

