//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SampleAccepted {
  /// Returns a new [SampleAccepted] instance.
  SampleAccepted({
    this.recorded,
  });
  /// Recorded is always true: the response is an acknowledgement, and the warehouse write is detached, so it reports acceptance, not durability.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? recorded;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SampleAccepted &&
    other.recorded == recorded;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (recorded == null ? 0 : recorded!.hashCode);

  @override
  String toString() => 'SampleAccepted[recorded=$recorded]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.recorded != null) {
      json[r'recorded'] = this.recorded;
    } else {
      json[r'recorded'] = null;
    }
    return json;
  }

  /// Returns a new [SampleAccepted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SampleAccepted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SampleAccepted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SampleAccepted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SampleAccepted(
        recorded: mapValueOfType<bool>(json, r'recorded'),
      );
    }
    return null;
  }

  static List<SampleAccepted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SampleAccepted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SampleAccepted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SampleAccepted> mapFromJson(dynamic json) {
    final map = <String, SampleAccepted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SampleAccepted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SampleAccepted-objects as value to a dart map
  static Map<String, List<SampleAccepted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SampleAccepted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SampleAccepted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

