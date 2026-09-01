//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Reach {
  /// Returns a new [Reach] instance.
  Reach({
    this.at,
    this.why,
  });
  /// At is `read`, `unconfigured`, `unreachable` or `refused`.  The four values are written out here because this document cannot carry an enum, so the description IS the contract a client reads. Spelling the Go constant names instead would name four identifiers no caller can see.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Why is the upstream's own words, on Unreachable and Refused, and empty otherwise. It is the upstream's and not ours: a failure reported without its reason sends the reader to look at the venue, which is the one place the fault is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? why;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Reach &&
    other.at == at &&
    other.why == why;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (why == null ? 0 : why!.hashCode);

  @override
  String toString() => 'Reach[at=$at, why=$why]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.why != null) {
      json[r'why'] = this.why;
    } else {
      json[r'why'] = null;
    }
    return json;
  }

  /// Returns a new [Reach] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Reach? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Reach[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Reach[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Reach(
        at: mapValueOfType<String>(json, r'at'),
        why: mapValueOfType<String>(json, r'why'),
      );
    }
    return null;
  }

  static List<Reach> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Reach>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Reach.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Reach> mapFromJson(dynamic json) {
    final map = <String, Reach>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Reach.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Reach-objects as value to a dart map
  static Map<String, List<Reach>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Reach>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Reach.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

