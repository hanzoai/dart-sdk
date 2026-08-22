//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProvisionRequest {
  /// Returns a new [ProvisionRequest] instance.
  ProvisionRequest({
    this.instance,
    this.name,
  });
  /// Instance binds a DEDICATED add-on to the app instance whose <instance>-addons Secret receives the <KIND>_URL (e.g. \"commerce\"). Optional: empty means \"not instance-bound\" — the DSN is returned once and wired by the caller.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? instance;

  /// Name is the org-unique slug for the new resource, matching ^[a-z0-9]([a-z0-9-]{0,38}[a-z0-9])?$. Every physical name derives from it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProvisionRequest &&
    other.instance == instance &&
    other.name == name;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (instance == null ? 0 : instance!.hashCode) +
    (name == null ? 0 : name!.hashCode);

  @override
  String toString() => 'ProvisionRequest[instance=$instance, name=$name]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.instance != null) {
      json[r'instance'] = this.instance;
    } else {
      json[r'instance'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    return json;
  }

  /// Returns a new [ProvisionRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProvisionRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProvisionRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProvisionRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProvisionRequest(
        instance: mapValueOfType<String>(json, r'instance'),
        name: mapValueOfType<String>(json, r'name'),
      );
    }
    return null;
  }

  static List<ProvisionRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProvisionRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProvisionRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProvisionRequest> mapFromJson(dynamic json) {
    final map = <String, ProvisionRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProvisionRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProvisionRequest-objects as value to a dart map
  static Map<String, List<ProvisionRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProvisionRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProvisionRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

