//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AccessChange {
  /// Returns a new [AccessChange] instance.
  AccessChange({
    this.affected = const [],
    this.failed = const [],
    this.org,
    this.suspended,
  });

  /// Affected lists the usernames that were updated.
  List<String> affected;

  /// Failed lists the usernames that were NOT updated. Non-empty means the org is in a mixed state and the action should be retried.
  List<String> failed;

  /// Org is the tenant acted on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Suspended is the state applied: true for suspend, false for reactivate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? suspended;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccessChange &&
    _deepEquality.equals(other.affected, affected) &&
    _deepEquality.equals(other.failed, failed) &&
    other.org == org &&
    other.suspended == suspended;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (affected.hashCode) +
    (failed.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (suspended == null ? 0 : suspended!.hashCode);

  @override
  String toString() => 'AccessChange[affected=$affected, failed=$failed, org=$org, suspended=$suspended]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'affected'] = this.affected;
      json[r'failed'] = this.failed;
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.suspended != null) {
      json[r'suspended'] = this.suspended;
    } else {
      json[r'suspended'] = null;
    }
    return json;
  }

  /// Returns a new [AccessChange] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccessChange? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccessChange[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccessChange[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccessChange(
        affected: json[r'affected'] is Iterable
            ? (json[r'affected'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        failed: json[r'failed'] is Iterable
            ? (json[r'failed'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        org: mapValueOfType<String>(json, r'org'),
        suspended: mapValueOfType<bool>(json, r'suspended'),
      );
    }
    return null;
  }

  static List<AccessChange> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccessChange>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccessChange.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccessChange> mapFromJson(dynamic json) {
    final map = <String, AccessChange>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccessChange.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccessChange-objects as value to a dart map
  static Map<String, List<AccessChange>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccessChange>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccessChange.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

