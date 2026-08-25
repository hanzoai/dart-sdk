//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AppliedResource {
  /// Returns a new [AppliedResource] instance.
  AppliedResource({
    this.message,
    this.resource,
    this.status,
  });
  /// Message is the engine's own sentence about this object — the apiserver's refusal on a failure, and typically empty on success. It is for a human reading a failed run, not a value to branch on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// Resource identifies the object as group/version/kind/namespace/name, the engine's own key. It is stable across runs, so two reports can be diffed on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? resource;

  /// Status is what happened to this object, from the engine's closed vocabulary: `Synced` (applied), `Pruned` (deleted because the source no longer declares it), `SyncFailed` (refused — read Message) and `PruneSkipped` (deletion was declined). It is the per-object detail behind the report's counts.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AppliedResource &&
    other.message == message &&
    other.resource == resource &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (resource == null ? 0 : resource!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'AppliedResource[message=$message, resource=$resource, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.resource != null) {
      json[r'resource'] = this.resource;
    } else {
      json[r'resource'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [AppliedResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AppliedResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AppliedResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AppliedResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AppliedResource(
        message: mapValueOfType<String>(json, r'message'),
        resource: mapValueOfType<String>(json, r'resource'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<AppliedResource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AppliedResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AppliedResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AppliedResource> mapFromJson(dynamic json) {
    final map = <String, AppliedResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AppliedResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AppliedResource-objects as value to a dart map
  static Map<String, List<AppliedResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AppliedResource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AppliedResource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

