//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceOverrideIn {
  /// Returns a new [ReferenceOverrideIn] instance.
  ReferenceOverrideIn({
    this.key,
    this.note,
    this.verdict,
  });

  /// Key is the member: a domain, a CIDR or address, an issuer prefix, a device digest. It is matched the same way the baseline is, so a deny on tempbox.example also covers mail.tempbox.example.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Note is why, in your own words. Optional, bounded to 512 bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Verdict is allow or deny, and nothing else. An override is a decision — unlike a baseline entry, which states facts and leaves the decision to your policy — because your organisation is the only party entitled to say \"for us, this one is fine\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? verdict;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceOverrideIn &&
    other.key == key &&
    other.note == note &&
    other.verdict == verdict;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (key == null ? 0 : key!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (verdict == null ? 0 : verdict!.hashCode);

  @override
  String toString() => 'ReferenceOverrideIn[key=$key, note=$note, verdict=$verdict]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.verdict != null) {
      json[r'verdict'] = this.verdict;
    } else {
      json[r'verdict'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceOverrideIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceOverrideIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceOverrideIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceOverrideIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceOverrideIn(
        key: mapValueOfType<String>(json, r'key'),
        note: mapValueOfType<String>(json, r'note'),
        verdict: mapValueOfType<String>(json, r'verdict'),
      );
    }
    return null;
  }

  static List<ReferenceOverrideIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceOverrideIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceOverrideIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceOverrideIn> mapFromJson(dynamic json) {
    final map = <String, ReferenceOverrideIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceOverrideIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceOverrideIn-objects as value to a dart map
  static Map<String, List<ReferenceOverrideIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceOverrideIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceOverrideIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

