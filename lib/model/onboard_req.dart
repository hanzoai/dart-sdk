//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OnboardReq {
  /// Returns a new [OnboardReq] instance.
  OnboardReq({
    this.name,
    this.personal,
  });

  /// Name is the organization's display name. Ignored when personal is true, which derives the name from the caller's own username instead.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Personal asks for the caller's own workspace: the name is derived from their username and the slug auto-suffixes to stay unique. Meaningless — and refused — for a caller who already has an organization.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? personal;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OnboardReq &&
    other.name == name &&
    other.personal == personal;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (name == null ? 0 : name!.hashCode) +
    (personal == null ? 0 : personal!.hashCode);

  @override
  String toString() => 'OnboardReq[name=$name, personal=$personal]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.personal != null) {
      json[r'personal'] = this.personal;
    } else {
      json[r'personal'] = null;
    }
    return json;
  }

  /// Returns a new [OnboardReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OnboardReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OnboardReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OnboardReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OnboardReq(
        name: mapValueOfType<String>(json, r'name'),
        personal: mapValueOfType<bool>(json, r'personal'),
      );
    }
    return null;
  }

  static List<OnboardReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OnboardReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OnboardReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OnboardReq> mapFromJson(dynamic json) {
    final map = <String, OnboardReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OnboardReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OnboardReq-objects as value to a dart map
  static Map<String, List<OnboardReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OnboardReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OnboardReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

