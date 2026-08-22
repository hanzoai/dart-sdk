//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RoutePlan {
  /// Returns a new [RoutePlan] instance.
  RoutePlan({
    this.candidates = const [],
    this.generatedAt,
    this.primary,
  });
  /// Candidates is every linked account in preference order: subscriptions first, then metered api-key accounts as the backstop.
  List<RouteCandidate> candidates;

  /// GeneratedAt is when the plan was computed, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatedAt;

  /// Primary is the first available candidate; absent when every account is rate-limited.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  RouteCandidate? primary;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RoutePlan &&
    _deepEquality.equals(other.candidates, candidates) &&
    other.generatedAt == generatedAt &&
    other.primary == primary;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (candidates.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (primary == null ? 0 : primary!.hashCode);

  @override
  String toString() => 'RoutePlan[candidates=$candidates, generatedAt=$generatedAt, primary=$primary]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'candidates'] = this.candidates;
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.primary != null) {
      json[r'primary'] = this.primary;
    } else {
      json[r'primary'] = null;
    }
    return json;
  }

  /// Returns a new [RoutePlan] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RoutePlan? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RoutePlan[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RoutePlan[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RoutePlan(
        candidates: RouteCandidate.listFromJson(json[r'candidates']),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        primary: RouteCandidate.fromJson(json[r'primary']),
      );
    }
    return null;
  }

  static List<RoutePlan> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RoutePlan>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RoutePlan.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RoutePlan> mapFromJson(dynamic json) {
    final map = <String, RoutePlan>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RoutePlan.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RoutePlan-objects as value to a dart map
  static Map<String, List<RoutePlan>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RoutePlan>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RoutePlan.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

