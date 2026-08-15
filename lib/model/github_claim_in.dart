//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubClaimIn {
  /// Returns a new [GithubClaimIn] instance.
  GithubClaimIn({
    this.accounts = const [],
    this.all,
  });

  /// Accounts names GitHub logins the App is installed on (\"hanzoai\"). Matched case-insensitively, since GitHub logins are. Ignored when all is true.
  List<String> accounts;

  /// All binds every account the App holds, instead of naming them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? all;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubClaimIn &&
    _deepEquality.equals(other.accounts, accounts) &&
    other.all == all;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accounts.hashCode) +
    (all == null ? 0 : all!.hashCode);

  @override
  String toString() => 'GithubClaimIn[accounts=$accounts, all=$all]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'accounts'] = this.accounts;
    if (this.all != null) {
      json[r'all'] = this.all;
    } else {
      json[r'all'] = null;
    }
    return json;
  }

  /// Returns a new [GithubClaimIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubClaimIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubClaimIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubClaimIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubClaimIn(
        accounts: json[r'accounts'] is Iterable
            ? (json[r'accounts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        all: mapValueOfType<bool>(json, r'all'),
      );
    }
    return null;
  }

  static List<GithubClaimIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubClaimIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubClaimIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubClaimIn> mapFromJson(dynamic json) {
    final map = <String, GithubClaimIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubClaimIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubClaimIn-objects as value to a dart map
  static Map<String, List<GithubClaimIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubClaimIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubClaimIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

