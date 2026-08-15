//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSCustomer {
  /// Returns a new [SaaSCustomer] instance.
  SaaSCustomer({
    this.category,
    this.mrrCents,
    this.org,
    this.plan,
    this.seats,
    this.since,
    this.status,
    this.usageCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

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
  int? seats;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? since;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? usageCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSCustomer &&
    other.category == category &&
    other.mrrCents == mrrCents &&
    other.org == org &&
    other.plan == plan &&
    other.seats == seats &&
    other.since == since &&
    other.status == status &&
    other.usageCents == usageCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (seats == null ? 0 : seats!.hashCode) +
    (since == null ? 0 : since!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (usageCents == null ? 0 : usageCents!.hashCode);

  @override
  String toString() => 'SaaSCustomer[category=$category, mrrCents=$mrrCents, org=$org, plan=$plan, seats=$seats, since=$since, status=$status, usageCents=$usageCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
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
    if (this.seats != null) {
      json[r'seats'] = this.seats;
    } else {
      json[r'seats'] = null;
    }
    if (this.since != null) {
      json[r'since'] = this.since;
    } else {
      json[r'since'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.usageCents != null) {
      json[r'usageCents'] = this.usageCents;
    } else {
      json[r'usageCents'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSCustomer] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSCustomer? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSCustomer[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSCustomer[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSCustomer(
        category: mapValueOfType<String>(json, r'category'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        org: mapValueOfType<String>(json, r'org'),
        plan: mapValueOfType<String>(json, r'plan'),
        seats: mapValueOfType<int>(json, r'seats'),
        since: mapValueOfType<String>(json, r'since'),
        status: mapValueOfType<String>(json, r'status'),
        usageCents: mapValueOfType<int>(json, r'usageCents'),
      );
    }
    return null;
  }

  static List<SaaSCustomer> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSCustomer>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSCustomer.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSCustomer> mapFromJson(dynamic json) {
    final map = <String, SaaSCustomer>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSCustomer.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSCustomer-objects as value to a dart map
  static Map<String, List<SaaSCustomer>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSCustomer>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSCustomer.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

