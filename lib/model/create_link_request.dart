//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CreateLinkRequest {
  /// Returns a new [CreateLinkRequest] instance.
  CreateLinkRequest({
    this.code,
    this.label,
  });

  /// Code is an optional vanity code; it must be free across the whole directory, and omitting it mints a random one. Body-only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Label is cosmetic — trimmed, stripped of control characters, capped — and never part of a code. Body-only: the URL cannot supply it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CreateLinkRequest &&
    other.code == code &&
    other.label == label;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (label == null ? 0 : label!.hashCode);

  @override
  String toString() => 'CreateLinkRequest[code=$code, label=$label]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    return json;
  }

  /// Returns a new [CreateLinkRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CreateLinkRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CreateLinkRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CreateLinkRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CreateLinkRequest(
        code: mapValueOfType<String>(json, r'code'),
        label: mapValueOfType<String>(json, r'label'),
      );
    }
    return null;
  }

  static List<CreateLinkRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CreateLinkRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CreateLinkRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CreateLinkRequest> mapFromJson(dynamic json) {
    final map = <String, CreateLinkRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CreateLinkRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CreateLinkRequest-objects as value to a dart map
  static Map<String, List<CreateLinkRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CreateLinkRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CreateLinkRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

