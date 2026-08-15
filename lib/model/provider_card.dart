//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProviderCard {
  /// Returns a new [ProviderCard] instance.
  ProviderCard({
    this.id,
    this.keyless,
    this.name,
    this.requires = const [],
  });

  /// ID is the provider slug used in the path: digitalocean, aws, gcp, azure.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Keyless is whether the provider can be linked WITHOUT storing a long-lived secret — AWS by role assumption, GCP by workload identity federation, Azure by federated credential. DigitalOcean is not: it needs a stored token.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? keyless;

  /// Name is the provider's display name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Requires names the credential fields a link body must carry for this provider.
  List<String> requires;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProviderCard &&
    other.id == id &&
    other.keyless == keyless &&
    other.name == name &&
    _deepEquality.equals(other.requires, requires);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (keyless == null ? 0 : keyless!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (requires.hashCode);

  @override
  String toString() => 'ProviderCard[id=$id, keyless=$keyless, name=$name, requires=$requires]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.keyless != null) {
      json[r'keyless'] = this.keyless;
    } else {
      json[r'keyless'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
      json[r'requires'] = this.requires;
    return json;
  }

  /// Returns a new [ProviderCard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProviderCard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProviderCard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProviderCard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProviderCard(
        id: mapValueOfType<String>(json, r'id'),
        keyless: mapValueOfType<bool>(json, r'keyless'),
        name: mapValueOfType<String>(json, r'name'),
        requires: json[r'requires'] is Iterable
            ? (json[r'requires'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ProviderCard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProviderCard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProviderCard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProviderCard> mapFromJson(dynamic json) {
    final map = <String, ProviderCard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProviderCard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProviderCard-objects as value to a dart map
  static Map<String, List<ProviderCard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProviderCard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProviderCard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

