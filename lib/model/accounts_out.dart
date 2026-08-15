//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AccountsOut {
  /// Returns a new [AccountsOut] instance.
  AccountsOut({
    this.accounts = const [],
    this.scope,
    this.tenant,
  });

  /// Accounts are the ledger accounts in scope with their balances.
  List<AccountView> accounts;

  /// Scope is the scope actually served: \"org\" or \"house\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scope;

  /// Tenant is the org whose accounts these are (empty for the house scope's own rows).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tenant;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountsOut &&
    _deepEquality.equals(other.accounts, accounts) &&
    other.scope == scope &&
    other.tenant == tenant;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accounts.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (tenant == null ? 0 : tenant!.hashCode);

  @override
  String toString() => 'AccountsOut[accounts=$accounts, scope=$scope, tenant=$tenant]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accounts'] = this.accounts;
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.tenant != null) {
      json[r'tenant'] = this.tenant;
    } else {
      json[r'tenant'] = null;
    }
    return json;
  }

  /// Returns a new [AccountsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountsOut(
        accounts: AccountView.listFromJson(json[r'accounts']),
        scope: mapValueOfType<String>(json, r'scope'),
        tenant: mapValueOfType<String>(json, r'tenant'),
      );
    }
    return null;
  }

  static List<AccountsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountsOut> mapFromJson(dynamic json) {
    final map = <String, AccountsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountsOut-objects as value to a dart map
  static Map<String, List<AccountsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

