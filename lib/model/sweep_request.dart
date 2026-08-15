//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SweepRequest {
  /// Returns a new [SweepRequest] instance.
  SweepRequest({
    this.period,
    this.revenueCents,
  });

  /// Period is the accrual period as YYYY-MM. Empty takes the current UTC month.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? period;

  /// RevenueCents is the net platform revenue measured for the period, in minor units. Must be >= 0.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revenueCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SweepRequest &&
    other.period == period &&
    other.revenueCents == revenueCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (period == null ? 0 : period!.hashCode) +
    (revenueCents == null ? 0 : revenueCents!.hashCode);

  @override
  String toString() => 'SweepRequest[period=$period, revenueCents=$revenueCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.period != null) {
      json[r'period'] = this.period;
    } else {
      json[r'period'] = null;
    }
    if (this.revenueCents != null) {
      json[r'revenueCents'] = this.revenueCents;
    } else {
      json[r'revenueCents'] = null;
    }
    return json;
  }

  /// Returns a new [SweepRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SweepRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SweepRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SweepRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SweepRequest(
        period: mapValueOfType<String>(json, r'period'),
        revenueCents: mapValueOfType<int>(json, r'revenueCents'),
      );
    }
    return null;
  }

  static List<SweepRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SweepRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SweepRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SweepRequest> mapFromJson(dynamic json) {
    final map = <String, SweepRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SweepRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SweepRequest-objects as value to a dart map
  static Map<String, List<SweepRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SweepRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SweepRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

