//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CustomerRow {
  /// Returns a new [CustomerRow] instance.
  CustomerRow({
    this.balanceCents,
    this.created,
    this.display,
    this.lastActive,
    this.mrrCents,
    this.org,
    this.ownerEmail,
    this.plan,
    this.spendCents,
    this.status,
    this.users,
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
  String? created;

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
  String? lastActive;

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
  String? ownerEmail;

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

  /// \"active\" | \"suspended\"
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
  int? users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerRow &&
    other.balanceCents == balanceCents &&
    other.created == created &&
    other.display == display &&
    other.lastActive == lastActive &&
    other.mrrCents == mrrCents &&
    other.org == org &&
    other.ownerEmail == ownerEmail &&
    other.plan == plan &&
    other.spendCents == spendCents &&
    other.status == status &&
    other.users == users;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (lastActive == null ? 0 : lastActive!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (ownerEmail == null ? 0 : ownerEmail!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (users == null ? 0 : users!.hashCode);

  @override
  String toString() => 'CustomerRow[balanceCents=$balanceCents, created=$created, display=$display, lastActive=$lastActive, mrrCents=$mrrCents, org=$org, ownerEmail=$ownerEmail, plan=$plan, spendCents=$spendCents, status=$status, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.lastActive != null) {
      json[r'lastActive'] = this.lastActive;
    } else {
      json[r'lastActive'] = null;
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
    if (this.ownerEmail != null) {
      json[r'ownerEmail'] = this.ownerEmail;
    } else {
      json[r'ownerEmail'] = null;
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
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.users != null) {
      json[r'users'] = this.users;
    } else {
      json[r'users'] = null;
    }
    return json;
  }

  /// Returns a new [CustomerRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerRow(
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        created: mapValueOfType<String>(json, r'created'),
        display: mapValueOfType<String>(json, r'display'),
        lastActive: mapValueOfType<String>(json, r'lastActive'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        org: mapValueOfType<String>(json, r'org'),
        ownerEmail: mapValueOfType<String>(json, r'ownerEmail'),
        plan: mapValueOfType<String>(json, r'plan'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        status: mapValueOfType<String>(json, r'status'),
        users: mapValueOfType<int>(json, r'users'),
      );
    }
    return null;
  }

  static List<CustomerRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerRow> mapFromJson(dynamic json) {
    final map = <String, CustomerRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerRow-objects as value to a dart map
  static Map<String, List<CustomerRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

