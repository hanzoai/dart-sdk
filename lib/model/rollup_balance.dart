//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RollupBalance {
  /// Returns a new [RollupBalance] instance.
  RollupBalance({
    this.availableCents,
    this.balanceCents,
    this.holdsCents,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? availableCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? holdsCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RollupBalance &&
    other.availableCents == availableCents &&
    other.balanceCents == balanceCents &&
    other.holdsCents == holdsCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (availableCents == null ? 0 : availableCents!.hashCode) +
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (holdsCents == null ? 0 : holdsCents!.hashCode);

  @override
  String toString() => 'RollupBalance[availableCents=$availableCents, balanceCents=$balanceCents, holdsCents=$holdsCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.availableCents != null) {
      json[r'availableCents'] = this.availableCents;
    } else {
      json[r'availableCents'] = null;
    }
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.holdsCents != null) {
      json[r'holdsCents'] = this.holdsCents;
    } else {
      json[r'holdsCents'] = null;
    }
    return json;
  }

  /// Returns a new [RollupBalance] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RollupBalance? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RollupBalance[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RollupBalance[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RollupBalance(
        availableCents: mapValueOfType<int>(json, r'availableCents'),
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        holdsCents: mapValueOfType<int>(json, r'holdsCents'),
      );
    }
    return null;
  }

  static List<RollupBalance> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RollupBalance>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RollupBalance.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RollupBalance> mapFromJson(dynamic json) {
    final map = <String, RollupBalance>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RollupBalance.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RollupBalance-objects as value to a dart map
  static Map<String, List<RollupBalance>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RollupBalance>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RollupBalance.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

