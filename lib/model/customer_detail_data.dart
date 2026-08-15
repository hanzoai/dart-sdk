//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CustomerDetailData {
  /// Returns a new [CustomerDetailData] instance.
  CustomerDetailData({
    this.apiKeys,
    this.balanceCents,
    this.created,
    this.display,
    this.mrrCents,
    this.org,
    this.ownerEmail,
    this.plan,
    this.spendCents,
    this.status,
    this.transactions = const [],
    this.users = const [],
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? apiKeys;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  List<CustomerTxn> transactions;

  List<CustomerUser> users;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CustomerDetailData &&
    other.apiKeys == apiKeys &&
    other.balanceCents == balanceCents &&
    other.created == created &&
    other.display == display &&
    other.mrrCents == mrrCents &&
    other.org == org &&
    other.ownerEmail == ownerEmail &&
    other.plan == plan &&
    other.spendCents == spendCents &&
    other.status == status &&
    _deepEquality.equals(other.transactions, transactions) &&
    _deepEquality.equals(other.users, users);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (apiKeys == null ? 0 : apiKeys!.hashCode) +
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (mrrCents == null ? 0 : mrrCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (ownerEmail == null ? 0 : ownerEmail!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (transactions.hashCode) +
    (users.hashCode);

  @override
  String toString() => 'CustomerDetailData[apiKeys=$apiKeys, balanceCents=$balanceCents, created=$created, display=$display, mrrCents=$mrrCents, org=$org, ownerEmail=$ownerEmail, plan=$plan, spendCents=$spendCents, status=$status, transactions=$transactions, users=$users]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.apiKeys != null) {
      json[r'apiKeys'] = this.apiKeys;
    } else {
      json[r'apiKeys'] = null;
    }
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
      json[r'transactions'] = this.transactions;
      json[r'users'] = this.users;
    return json;
  }

  /// Returns a new [CustomerDetailData] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CustomerDetailData? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CustomerDetailData[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CustomerDetailData[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CustomerDetailData(
        apiKeys: mapValueOfType<int>(json, r'apiKeys'),
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        created: mapValueOfType<String>(json, r'created'),
        display: mapValueOfType<String>(json, r'display'),
        mrrCents: mapValueOfType<int>(json, r'mrrCents'),
        org: mapValueOfType<String>(json, r'org'),
        ownerEmail: mapValueOfType<String>(json, r'ownerEmail'),
        plan: mapValueOfType<String>(json, r'plan'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        status: mapValueOfType<String>(json, r'status'),
        transactions: CustomerTxn.listFromJson(json[r'transactions']),
        users: CustomerUser.listFromJson(json[r'users']),
      );
    }
    return null;
  }

  static List<CustomerDetailData> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CustomerDetailData>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CustomerDetailData.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CustomerDetailData> mapFromJson(dynamic json) {
    final map = <String, CustomerDetailData>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CustomerDetailData.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CustomerDetailData-objects as value to a dart map
  static Map<String, List<CustomerDetailData>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CustomerDetailData>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CustomerDetailData.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

