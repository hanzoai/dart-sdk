//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BlueprintView {
  /// Returns a new [BlueprintView] instance.
  BlueprintView({
    this.blueprint,
    this.brand,
    this.counts,
    this.version,
  });
  /// Blueprint is the whole authored document, including items disabled for the org-facing reads, with every enabled flag written out explicitly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Blueprint? blueprint;

  /// Brand is the key this blueprint is stored under — the deployment's brand, or \"\" for the shared base blueprint it falls back to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? brand;

  /// Counts summarises how many items each collection holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  BlueprintCounts? counts;

  /// Version is the active stored version number (1 is the seed). Each edit appends a new one; nothing is ever overwritten.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BlueprintView &&
    other.blueprint == blueprint &&
    other.brand == brand &&
    other.counts == counts &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (blueprint == null ? 0 : blueprint!.hashCode) +
    (brand == null ? 0 : brand!.hashCode) +
    (counts == null ? 0 : counts!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'BlueprintView[blueprint=$blueprint, brand=$brand, counts=$counts, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.blueprint != null) {
      json[r'blueprint'] = this.blueprint;
    } else {
      json[r'blueprint'] = null;
    }
    if (this.brand != null) {
      json[r'brand'] = this.brand;
    } else {
      json[r'brand'] = null;
    }
    if (this.counts != null) {
      json[r'counts'] = this.counts;
    } else {
      json[r'counts'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [BlueprintView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BlueprintView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BlueprintView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BlueprintView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BlueprintView(
        blueprint: Blueprint.fromJson(json[r'blueprint']),
        brand: mapValueOfType<String>(json, r'brand'),
        counts: BlueprintCounts.fromJson(json[r'counts']),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<BlueprintView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BlueprintView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BlueprintView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BlueprintView> mapFromJson(dynamic json) {
    final map = <String, BlueprintView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BlueprintView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BlueprintView-objects as value to a dart map
  static Map<String, List<BlueprintView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BlueprintView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BlueprintView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

