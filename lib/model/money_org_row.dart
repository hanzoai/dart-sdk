//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MoneyOrgRow {
  /// Returns a new [MoneyOrgRow] instance.
  MoneyOrgRow({
    this.balanceCents,
    this.display,
    this.grantedCents,
    this.grants,
    this.mrrCents,
    this.org,
    this.plan,
    this.spendCents,
  });

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
  String? display;

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
  int? grants;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoneyOrgRow &&
    other.balanceCents == balanceCents &&
    other.display == display &&
    other.grantedCents == grantedCents &&
    other.grants == grants &&
    other.mrrCents == mrrCents &&
    other.org == org &&
    other.plan == plan &&
    other.spendCents == spendCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (grantedCents == null ? 0 : grantedCents!.hashCode) +
    (grants == null ? 0 : grants!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode);

  @override
  String toString() => 'MoneyOrgRow[balanceCents=$balanceCents, display=$display, grantedCents=$grantedCents, grants=$grants, mrrCents=$mrrCents, org=$org, plan=$plan, spendCents=$spendCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.grantedCents != null) {
      json[r'grantedCents'] = this.grantedCents;
    } else {
      json[r'grantedCents'] = null;
    }
    if (this.grants != null) {
      json[r'grants'] = this.grants;
    } else {
      json[r'grants'] = null;
    }
    if (this.mrrCents != null) {
      json[r'mrrCents'] = this.mrrCents;
    } else {
      json[r'mrrCents'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    return json;
  }

  /// Returns a new [MoneyOrgRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoneyOrgRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoneyOrgRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoneyOrgRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoneyOrgRow(
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        display: mapValueOfType<String>(json, r'display'),
        grantedCents: mapValueOfType<int>(json, r'grantedCents'),
        grants: mapValueOfType<int>(json, r'grants'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        org: mapValueOfType<String>(json, r'org'),
        plan: mapValueOfType<String>(json, r'plan'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
      );
    }
    return null;
  }

  static List<MoneyOrgRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyOrgRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyOrgRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoneyOrgRow> mapFromJson(dynamic json) {
    final map = <String, MoneyOrgRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoneyOrgRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoneyOrgRow-objects as value to a dart map
  static Map<String, List<MoneyOrgRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoneyOrgRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoneyOrgRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

