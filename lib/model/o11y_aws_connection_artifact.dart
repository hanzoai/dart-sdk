//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yAWSConnectionArtifact {
  /// Returns a new [O11yAWSConnectionArtifact] instance.
  O11yAWSConnectionArtifact({
    this.connectionUrl,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectionUrl;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yAWSConnectionArtifact &&
    other.connectionUrl == connectionUrl;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connectionUrl == null ? 0 : connectionUrl!.hashCode);

  @override
  String toString() => 'O11yAWSConnectionArtifact[connectionUrl=$connectionUrl]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connectionUrl != null) {
      json[r'connectionUrl'] = this.connectionUrl;
    } else {
      json[r'connectionUrl'] = null;
    }
    return json;
  }

  /// Returns a new [O11yAWSConnectionArtifact] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yAWSConnectionArtifact? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yAWSConnectionArtifact[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yAWSConnectionArtifact[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yAWSConnectionArtifact(
        connectionUrl: mapValueOfType<String>(json, r'connectionUrl'),
      );
    }
    return null;
  }

  static List<O11yAWSConnectionArtifact> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yAWSConnectionArtifact>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yAWSConnectionArtifact.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yAWSConnectionArtifact> mapFromJson(dynamic json) {
    final map = <String, O11yAWSConnectionArtifact>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yAWSConnectionArtifact.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yAWSConnectionArtifact-objects as value to a dart map
  static Map<String, List<O11yAWSConnectionArtifact>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yAWSConnectionArtifact>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yAWSConnectionArtifact.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

