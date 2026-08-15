//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SettingsReq {
  /// Returns a new [SettingsReq] instance.
  SettingsReq({
    this.config = const {},
    this.product,
    this.secrets = const {},
  });

  /// Config is the product's non-secret configuration, stored verbatim. Bounded at 64 KiB once serialized. Omit it to store an empty object.
  Map<String, Object> config;

  /// Product is the catalog slug, from the PATH. zip binds the path last, so the URL names the product being written whatever a body field claims.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  /// Secrets are the secret fields, by name. Each VALUE is sealed into KMS and never reaches this deployment's database; a value that is empty or equal to the mask the read path returns means \"unchanged\" and is skipped, so a console round-trip cannot blank a stored secret. A key must match ^[a-z0-9][a-z0-9._-]{0,62}$, a value is bounded at 8 KiB, and an org may hold at most 64 secret fields per product.
  Map<String, String> secrets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SettingsReq &&
    _deepEquality.equals(other.config, config) &&
    other.product == product &&
    _deepEquality.equals(other.secrets, secrets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (config.hashCode) +
    (product == null ? 0 : product!.hashCode) +
    (secrets.hashCode);

  @override
  String toString() => 'SettingsReq[config=$config, product=$product, secrets=$secrets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'config'] = this.config;
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
      json[r'secrets'] = this.secrets;
    return json;
  }

  /// Returns a new [SettingsReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SettingsReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SettingsReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SettingsReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SettingsReq(
        config: mapCastOfType<String, Object>(json, r'config') ?? const {},
        product: mapValueOfType<String>(json, r'product'),
        secrets: mapCastOfType<String, String>(json, r'secrets') ?? const {},
      );
    }
    return null;
  }

  static List<SettingsReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SettingsReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SettingsReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SettingsReq> mapFromJson(dynamic json) {
    final map = <String, SettingsReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SettingsReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SettingsReq-objects as value to a dart map
  static Map<String, List<SettingsReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SettingsReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SettingsReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

