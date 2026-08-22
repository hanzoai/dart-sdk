//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Tier {
  /// Returns a new [Tier] instance.
  Tier({
    this.balance,
    this.tier,
    this.user,
    this.windows = const [],
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TierBalance? balance;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TierLimits? tier;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? user;

  List<Window> windows;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Tier &&
    other.balance == balance &&
    other.tier == tier &&
    other.user == user &&
    _deepEquality.equals(other.windows, windows);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balance == null ? 0 : balance!.hashCode) +
    (tier == null ? 0 : tier!.hashCode) +
    (user == null ? 0 : user!.hashCode) +
    (windows.hashCode);

  @override
  String toString() => 'Tier[balance=$balance, tier=$tier, user=$user, windows=$windows]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balance != null) {
      json[r'balance'] = this.balance;
    } else {
      json[r'balance'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    if (this.user != null) {
      json[r'user'] = this.user;
    } else {
      json[r'user'] = null;
    }
      json[r'windows'] = this.windows;
    return json;
  }

  /// Returns a new [Tier] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Tier? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Tier[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Tier[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Tier(
        balance: TierBalance.fromJson(json[r'balance']),
        tier: TierLimits.fromJson(json[r'tier']),
        user: mapValueOfType<String>(json, r'user'),
        windows: Window.listFromJson(json[r'windows']),
      );
    }
    return null;
  }

  static List<Tier> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Tier>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Tier.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Tier> mapFromJson(dynamic json) {
    final map = <String, Tier>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Tier.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Tier-objects as value to a dart map
  static Map<String, List<Tier>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Tier>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Tier.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

