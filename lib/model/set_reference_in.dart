//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SetReferenceIn {
  /// Returns a new [SetReferenceIn] instance.
  SetReferenceIn({
    this.entries = const [],
  });
  /// Entries are the overrides to write, up to 1000 per call.
  List<ReferenceOverrideIn> entries;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetReferenceIn &&
    _deepEquality.equals(other.entries, entries);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entries.hashCode);

  @override
  String toString() => 'SetReferenceIn[entries=$entries]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'entries'] = this.entries;
    return json;
  }

  /// Returns a new [SetReferenceIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetReferenceIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetReferenceIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetReferenceIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetReferenceIn(
        entries: ReferenceOverrideIn.listFromJson(json[r'entries']),
      );
    }
    return null;
  }

  static List<SetReferenceIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetReferenceIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetReferenceIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetReferenceIn> mapFromJson(dynamic json) {
    final map = <String, SetReferenceIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetReferenceIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetReferenceIn-objects as value to a dart map
  static Map<String, List<SetReferenceIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetReferenceIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetReferenceIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

