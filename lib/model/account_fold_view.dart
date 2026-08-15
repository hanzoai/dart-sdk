//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AccountFoldView {
  /// Returns a new [AccountFoldView] instance.
  AccountFoldView({
    this.account,
    this.clusters = const [],
  });

  /// Account is the account as it is now recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CloudAccountView? account;

  /// Clusters is one entry per cluster discovered in the account. It is empty when discovery itself failed, which leaves the previously folded set untouched rather than mass-detaching it.
  List<ClusterResult> clusters;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AccountFoldView &&
    other.account == account &&
    _deepEquality.equals(other.clusters, clusters);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (clusters.hashCode);

  @override
  String toString() => 'AccountFoldView[account=$account, clusters=$clusters]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
      json[r'clusters'] = this.clusters;
    return json;
  }

  /// Returns a new [AccountFoldView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AccountFoldView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AccountFoldView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AccountFoldView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AccountFoldView(
        account: CloudAccountView.fromJson(json[r'account']),
        clusters: ClusterResult.listFromJson(json[r'clusters']),
      );
    }
    return null;
  }

  static List<AccountFoldView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AccountFoldView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AccountFoldView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AccountFoldView> mapFromJson(dynamic json) {
    final map = <String, AccountFoldView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AccountFoldView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AccountFoldView-objects as value to a dart map
  static Map<String, List<AccountFoldView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AccountFoldView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AccountFoldView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

