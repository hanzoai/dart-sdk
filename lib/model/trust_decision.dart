//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TrustDecision {
  /// Returns a new [TrustDecision] instance.
  TrustDecision({
    this.days,
    this.id,
    this.note,
  });
  /// Days is how long the grant stays open, from now. Optional; 14 by default and 365 at most — a longer release is describing a customer relationship rather than a document.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? days;

  /// ID is the request to answer, taken from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Note is why. Recorded on the request either way, and it is what the record shows a year later.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TrustDecision &&
    other.days == days &&
    other.id == id &&
    other.note == note;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (days == null ? 0 : days!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (note == null ? 0 : note!.hashCode);

  @override
  String toString() => 'TrustDecision[days=$days, id=$id, note=$note]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.days != null) {
      json[r'days'] = this.days;
    } else {
      json[r'days'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    return json;
  }

  /// Returns a new [TrustDecision] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TrustDecision? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TrustDecision[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TrustDecision[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TrustDecision(
        days: mapValueOfType<int>(json, r'days'),
        id: mapValueOfType<String>(json, r'id'),
        note: mapValueOfType<String>(json, r'note'),
      );
    }
    return null;
  }

  static List<TrustDecision> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TrustDecision>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TrustDecision.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TrustDecision> mapFromJson(dynamic json) {
    final map = <String, TrustDecision>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TrustDecision.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TrustDecision-objects as value to a dart map
  static Map<String, List<TrustDecision>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TrustDecision>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TrustDecision.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

