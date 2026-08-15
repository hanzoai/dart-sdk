//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSUsage {
  /// Returns a new [SaaSUsage] instance.
  SaaSUsage({
    this.instrumented,
    this.requests,
    this.windowUsageCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? instrumented;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowUsageCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSUsage &&
    other.instrumented == instrumented &&
    other.requests == requests &&
    other.windowUsageCents == windowUsageCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (instrumented == null ? 0 : instrumented!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (windowUsageCents == null ? 0 : windowUsageCents!.hashCode);

  @override
  String toString() => 'SaaSUsage[instrumented=$instrumented, requests=$requests, windowUsageCents=$windowUsageCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.instrumented != null) {
      json[r'instrumented'] = this.instrumented;
    } else {
      json[r'instrumented'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.windowUsageCents != null) {
      json[r'windowUsageCents'] = this.windowUsageCents;
    } else {
      json[r'windowUsageCents'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSUsage(
        instrumented: mapValueOfType<bool>(json, r'instrumented'),
        requests: mapValueOfType<int>(json, r'requests'),
        windowUsageCents: mapValueOfType<int>(json, r'windowUsageCents'),
      );
    }
    return null;
  }

  static List<SaaSUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSUsage> mapFromJson(dynamic json) {
    final map = <String, SaaSUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSUsage-objects as value to a dart map
  static Map<String, List<SaaSUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

