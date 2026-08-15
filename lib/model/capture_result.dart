//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptureResult {
  /// Returns a new [CaptureResult] instance.
  CaptureResult({
    this.accepted,
    this.dropped,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accepted;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dropped;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptureResult &&
    other.accepted == accepted &&
    other.dropped == dropped;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accepted == null ? 0 : accepted!.hashCode) +
    (dropped == null ? 0 : dropped!.hashCode);

  @override
  String toString() => 'CaptureResult[accepted=$accepted, dropped=$dropped]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accepted != null) {
      json[r'accepted'] = this.accepted;
    } else {
      json[r'accepted'] = null;
    }
    if (this.dropped != null) {
      json[r'dropped'] = this.dropped;
    } else {
      json[r'dropped'] = null;
    }
    return json;
  }

  /// Returns a new [CaptureResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptureResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptureResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptureResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptureResult(
        accepted: mapValueOfType<int>(json, r'accepted'),
        dropped: mapValueOfType<int>(json, r'dropped'),
      );
    }
    return null;
  }

  static List<CaptureResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptureResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptureResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptureResult> mapFromJson(dynamic json) {
    final map = <String, CaptureResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptureResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptureResult-objects as value to a dart map
  static Map<String, List<CaptureResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptureResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptureResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

