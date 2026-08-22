//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PlanEntitlements {
  /// Returns a new [PlanEntitlements] instance.
  PlanEntitlements({
    this.entitlements,
    this.id,
    this.licenseFeatures = const [],
  });
  Object? entitlements;

  /// ID is the plan id or slug that was resolved, as it was requested.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// LicenseFeatures is the flat, sorted feature list a signed license carries, derived from the entitlements.
  List<String> licenseFeatures;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PlanEntitlements &&
    other.entitlements == entitlements &&
    other.id == id &&
    _deepEquality.equals(other.licenseFeatures, licenseFeatures);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (entitlements == null ? 0 : entitlements!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (licenseFeatures.hashCode);

  @override
  String toString() => 'PlanEntitlements[entitlements=$entitlements, id=$id, licenseFeatures=$licenseFeatures]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.entitlements != null) {
      json[r'entitlements'] = this.entitlements;
    } else {
      json[r'entitlements'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'license_features'] = this.licenseFeatures;
    return json;
  }

  /// Returns a new [PlanEntitlements] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PlanEntitlements? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PlanEntitlements[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PlanEntitlements[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PlanEntitlements(
        entitlements: mapValueOfType<Object>(json, r'entitlements'),
        id: mapValueOfType<String>(json, r'id'),
        licenseFeatures: json[r'license_features'] is Iterable
            ? (json[r'license_features'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<PlanEntitlements> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PlanEntitlements>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PlanEntitlements.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PlanEntitlements> mapFromJson(dynamic json) {
    final map = <String, PlanEntitlements>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PlanEntitlements.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PlanEntitlements-objects as value to a dart map
  static Map<String, List<PlanEntitlements>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PlanEntitlements>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PlanEntitlements.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

