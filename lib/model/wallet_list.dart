//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WalletList {
  /// Returns a new [WalletList] instance.
  WalletList({
    this.wallets = const [],
  });

  /// Wallets are the matching wallets, newest first.
  List<Wallet> wallets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WalletList &&
    _deepEquality.equals(other.wallets, wallets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (wallets.hashCode);

  @override
  String toString() => 'WalletList[wallets=$wallets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'wallets'] = this.wallets;
    return json;
  }

  /// Returns a new [WalletList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WalletList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WalletList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WalletList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WalletList(
        wallets: Wallet.listFromJson(json[r'wallets']),
      );
    }
    return null;
  }

  static List<WalletList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WalletList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WalletList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WalletList> mapFromJson(dynamic json) {
    final map = <String, WalletList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WalletList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WalletList-objects as value to a dart map
  static Map<String, List<WalletList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WalletList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WalletList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

