//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PagesDeploymentConfigs {
  /// Returns a new [PagesDeploymentConfigs] instance.
  PagesDeploymentConfigs({
    this.preview,
    this.production,
  });
  /// Preview is the config every branch build other than the production branch runs under. It is a SEPARATE set of bindings and variables, which is what lets a preview point at test data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PagesDeploymentConfig? preview;

  /// Production is the config the production branch builds under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  PagesDeploymentConfig? production;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PagesDeploymentConfigs &&
    other.preview == preview &&
    other.production == production;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (preview == null ? 0 : preview!.hashCode) +
    (production == null ? 0 : production!.hashCode);

  @override
  String toString() => 'PagesDeploymentConfigs[preview=$preview, production=$production]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.preview != null) {
      json[r'preview'] = this.preview;
    } else {
      json[r'preview'] = null;
    }
    if (this.production != null) {
      json[r'production'] = this.production;
    } else {
      json[r'production'] = null;
    }
    return json;
  }

  /// Returns a new [PagesDeploymentConfigs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PagesDeploymentConfigs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PagesDeploymentConfigs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PagesDeploymentConfigs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PagesDeploymentConfigs(
        preview: PagesDeploymentConfig.fromJson(json[r'preview']),
        production: PagesDeploymentConfig.fromJson(json[r'production']),
      );
    }
    return null;
  }

  static List<PagesDeploymentConfigs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PagesDeploymentConfigs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PagesDeploymentConfigs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PagesDeploymentConfigs> mapFromJson(dynamic json) {
    final map = <String, PagesDeploymentConfigs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PagesDeploymentConfigs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PagesDeploymentConfigs-objects as value to a dart map
  static Map<String, List<PagesDeploymentConfigs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PagesDeploymentConfigs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PagesDeploymentConfigs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

