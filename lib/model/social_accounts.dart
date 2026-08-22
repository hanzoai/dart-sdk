//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialAccounts {
  /// Returns a new [SocialAccounts] instance.
  SocialAccounts({
    this.data = const [],
  });
  /// Data is the accounts, most-recently-updated first, bounded by the limit.
  List<SocialAccount> data;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialAccounts &&
    _deepEquality.equals(other.data, data);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data.hashCode);

  @override
  String toString() => 'SocialAccounts[data=$data]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'data'] = this.data;
    return json;
  }

  /// Returns a new [SocialAccounts] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialAccounts? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialAccounts[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialAccounts[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialAccounts(
        data: SocialAccount.listFromJson(json[r'data']),
      );
    }
    return null;
  }

  static List<SocialAccounts> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialAccounts>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialAccounts.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialAccounts> mapFromJson(dynamic json) {
    final map = <String, SocialAccounts>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialAccounts.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialAccounts-objects as value to a dart map
  static Map<String, List<SocialAccounts>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialAccounts>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialAccounts.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

