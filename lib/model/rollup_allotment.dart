//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RollupAllotment {
  /// Returns a new [RollupAllotment] instance.
  RollupAllotment({
    this.consumedCents,
    this.grantedCents,
    this.monthlyCents,
    this.remainingCents,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? consumedCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grantedCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? monthlyCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? remainingCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RollupAllotment &&
    other.consumedCents == consumedCents &&
    other.grantedCents == grantedCents &&
    other.monthlyCents == monthlyCents &&
    other.remainingCents == remainingCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (consumedCents == null ? 0 : consumedCents!.hashCode) +
    (grantedCents == null ? 0 : grantedCents!.hashCode) +
    (monthlyCents == null ? 0 : monthlyCents!.hashCode) +
    (remainingCents == null ? 0 : remainingCents!.hashCode);

  @override
  String toString() => 'RollupAllotment[consumedCents=$consumedCents, grantedCents=$grantedCents, monthlyCents=$monthlyCents, remainingCents=$remainingCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.consumedCents != null) {
      json[r'consumedCents'] = this.consumedCents;
    } else {
      json[r'consumedCents'] = null;
    }
    if (this.grantedCents != null) {
      json[r'grantedCents'] = this.grantedCents;
    } else {
      json[r'grantedCents'] = null;
    }
    if (this.monthlyCents != null) {
      json[r'monthlyCents'] = this.monthlyCents;
    } else {
      json[r'monthlyCents'] = null;
    }
    if (this.remainingCents != null) {
      json[r'remainingCents'] = this.remainingCents;
    } else {
      json[r'remainingCents'] = null;
    }
    return json;
  }

  /// Returns a new [RollupAllotment] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RollupAllotment? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RollupAllotment[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RollupAllotment[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RollupAllotment(
        consumedCents: mapValueOfType<int>(json, r'consumedCents'),
        grantedCents: mapValueOfType<int>(json, r'grantedCents'),
        monthlyCents: mapValueOfType<int>(json, r'monthlyCents'),
        remainingCents: mapValueOfType<int>(json, r'remainingCents'),
      );
    }
    return null;
  }

  static List<RollupAllotment> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RollupAllotment>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RollupAllotment.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RollupAllotment> mapFromJson(dynamic json) {
    final map = <String, RollupAllotment>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RollupAllotment.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RollupAllotment-objects as value to a dart map
  static Map<String, List<RollupAllotment>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RollupAllotment>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RollupAllotment.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

