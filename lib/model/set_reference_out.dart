//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SetReferenceOut {
  /// Returns a new [SetReferenceOut] instance.
  SetReferenceOut({
    this.overrides,
    this.set_,
    this.written,
  });

  /// Overrides is how many your org now holds in this set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? overrides;

  /// Set is the set written in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? set_;

  /// Written is how many entries this call wrote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? written;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SetReferenceOut &&
    other.overrides == overrides &&
    other.set_ == set_ &&
    other.written == written;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (overrides == null ? 0 : overrides!.hashCode) +
    (set_ == null ? 0 : set_!.hashCode) +
    (written == null ? 0 : written!.hashCode);

  @override
  String toString() => 'SetReferenceOut[overrides=$overrides, set_=$set_, written=$written]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.overrides != null) {
      json[r'overrides'] = this.overrides;
    } else {
      json[r'overrides'] = null;
    }
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
    if (this.written != null) {
      json[r'written'] = this.written;
    } else {
      json[r'written'] = null;
    }
    return json;
  }

  /// Returns a new [SetReferenceOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SetReferenceOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SetReferenceOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SetReferenceOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SetReferenceOut(
        overrides: mapValueOfType<int>(json, r'overrides'),
        set_: mapValueOfType<String>(json, r'set'),
        written: mapValueOfType<int>(json, r'written'),
      );
    }
    return null;
  }

  static List<SetReferenceOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SetReferenceOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SetReferenceOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SetReferenceOut> mapFromJson(dynamic json) {
    final map = <String, SetReferenceOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SetReferenceOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SetReferenceOut-objects as value to a dart map
  static Map<String, List<SetReferenceOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SetReferenceOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SetReferenceOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

