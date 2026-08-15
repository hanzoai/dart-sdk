//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MoneyCredits {
  /// Returns a new [MoneyCredits] instance.
  MoneyCredits({
    this.consumedCents,
    this.grantedCents,
    this.grantedPrepaidCents,
    this.grantedTrialCents,
    this.grants,
    this.outstandingCents,
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

  /// real money added
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grantedPrepaidCents;

  /// non-cash comps/promos
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grantedTrialCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? grants;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? outstandingCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoneyCredits &&
    other.consumedCents == consumedCents &&
    other.grantedCents == grantedCents &&
    other.grantedPrepaidCents == grantedPrepaidCents &&
    other.grantedTrialCents == grantedTrialCents &&
    other.grants == grants &&
    other.outstandingCents == outstandingCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (consumedCents == null ? 0 : consumedCents!.hashCode) +
    (grantedCents == null ? 0 : grantedCents!.hashCode) +
    (grantedPrepaidCents == null ? 0 : grantedPrepaidCents!.hashCode) +
    (grantedTrialCents == null ? 0 : grantedTrialCents!.hashCode) +
    (grants == null ? 0 : grants!.hashCode) +
    (outstandingCents == null ? 0 : outstandingCents!.hashCode);

  @override
  String toString() => 'MoneyCredits[consumedCents=$consumedCents, grantedCents=$grantedCents, grantedPrepaidCents=$grantedPrepaidCents, grantedTrialCents=$grantedTrialCents, grants=$grants, outstandingCents=$outstandingCents]';

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
    if (this.grantedPrepaidCents != null) {
      json[r'grantedPrepaidCents'] = this.grantedPrepaidCents;
    } else {
      json[r'grantedPrepaidCents'] = null;
    }
    if (this.grantedTrialCents != null) {
      json[r'grantedTrialCents'] = this.grantedTrialCents;
    } else {
      json[r'grantedTrialCents'] = null;
    }
    if (this.grants != null) {
      json[r'grants'] = this.grants;
    } else {
      json[r'grants'] = null;
    }
    if (this.outstandingCents != null) {
      json[r'outstandingCents'] = this.outstandingCents;
    } else {
      json[r'outstandingCents'] = null;
    }
    return json;
  }

  /// Returns a new [MoneyCredits] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoneyCredits? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoneyCredits[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoneyCredits[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoneyCredits(
        consumedCents: mapValueOfType<int>(json, r'consumedCents'),
        grantedCents: mapValueOfType<int>(json, r'grantedCents'),
        grantedPrepaidCents: mapValueOfType<int>(json, r'grantedPrepaidCents'),
        grantedTrialCents: mapValueOfType<int>(json, r'grantedTrialCents'),
        grants: mapValueOfType<int>(json, r'grants'),
        outstandingCents: mapValueOfType<int>(json, r'outstandingCents'),
      );
    }
    return null;
  }

  static List<MoneyCredits> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyCredits>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyCredits.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoneyCredits> mapFromJson(dynamic json) {
    final map = <String, MoneyCredits>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoneyCredits.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoneyCredits-objects as value to a dart map
  static Map<String, List<MoneyCredits>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoneyCredits>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoneyCredits.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

