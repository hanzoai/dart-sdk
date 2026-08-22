//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableRoundCloseRequest {
  /// Returns a new [CaptableRoundCloseRequest] instance.
  CaptableRoundCloseRequest({
    this.closeDate,
    this.id,
  });
  Object? closeDate;

  /// ID is the round to close. It is the path segment: the URL is the addressing authority, and the org it is resolved in comes from the caller's principal, so an id from another tenant is simply not found.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableRoundCloseRequest &&
    other.closeDate == closeDate &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (closeDate == null ? 0 : closeDate!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'CaptableRoundCloseRequest[closeDate=$closeDate, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.closeDate != null) {
      json[r'closeDate'] = this.closeDate;
    } else {
      json[r'closeDate'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableRoundCloseRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableRoundCloseRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableRoundCloseRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableRoundCloseRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableRoundCloseRequest(
        closeDate: mapValueOfType<Object>(json, r'closeDate'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<CaptableRoundCloseRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableRoundCloseRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableRoundCloseRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableRoundCloseRequest> mapFromJson(dynamic json) {
    final map = <String, CaptableRoundCloseRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableRoundCloseRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableRoundCloseRequest-objects as value to a dart map
  static Map<String, List<CaptableRoundCloseRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableRoundCloseRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableRoundCloseRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

