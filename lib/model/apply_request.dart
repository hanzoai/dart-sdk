//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ApplyRequest {
  /// Returns a new [ApplyRequest] instance.
  ApplyRequest({
    this.requestedCode,
  });

  /// RequestedCode is the vanity code the applicant asks for; approval may mint a different one if it is taken. Body-only: the URL cannot supply it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestedCode;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ApplyRequest &&
    other.requestedCode == requestedCode;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (requestedCode == null ? 0 : requestedCode!.hashCode);

  @override
  String toString() => 'ApplyRequest[requestedCode=$requestedCode]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.requestedCode != null) {
      json[r'requestedCode'] = this.requestedCode;
    } else {
      json[r'requestedCode'] = null;
    }
    return json;
  }

  /// Returns a new [ApplyRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ApplyRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ApplyRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ApplyRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ApplyRequest(
        requestedCode: mapValueOfType<String>(json, r'requestedCode'),
      );
    }
    return null;
  }

  static List<ApplyRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ApplyRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ApplyRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ApplyRequest> mapFromJson(dynamic json) {
    final map = <String, ApplyRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ApplyRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ApplyRequest-objects as value to a dart map
  static Map<String, List<ApplyRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ApplyRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ApplyRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

