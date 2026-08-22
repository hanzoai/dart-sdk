//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MlCreate {
  /// Returns a new [MlCreate] instance.
  MlCreate({
    this.labels = const {},
    this.name,
    this.spec,
  });
  /// Labels are extra labels to set on the object, merged UNDER the tenancy labels this plane derives from the validated principal — so a label naming another org's scope cannot displace the real one.
  Map<String, String> labels;

  /// Name is the resource's name: a DNS-1123 label (^[a-z0-9]([a-z0-9-]{0,61}[a-z0-9])?$), lowercased and trimmed. It is the name the resource answers to for the life of the caller's org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  Object? spec;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MlCreate &&
    _deepEquality.equals(other.labels, labels) &&
    other.name == name &&
    other.spec == spec;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (labels.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (spec == null ? 0 : spec!.hashCode);

  @override
  String toString() => 'MlCreate[labels=$labels, name=$name, spec=$spec]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'labels'] = this.labels;
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.spec != null) {
      json[r'spec'] = this.spec;
    } else {
      json[r'spec'] = null;
    }
    return json;
  }

  /// Returns a new [MlCreate] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MlCreate? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MlCreate[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MlCreate[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MlCreate(
        labels: mapCastOfType<String, String>(json, r'labels') ?? const {},
        name: mapValueOfType<String>(json, r'name'),
        spec: mapValueOfType<Object>(json, r'spec'),
      );
    }
    return null;
  }

  static List<MlCreate> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MlCreate>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MlCreate.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MlCreate> mapFromJson(dynamic json) {
    final map = <String, MlCreate>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MlCreate.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MlCreate-objects as value to a dart map
  static Map<String, List<MlCreate>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MlCreate>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MlCreate.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

