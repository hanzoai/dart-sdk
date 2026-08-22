//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubClaimOut {
  /// Returns a new [GithubClaimOut] instance.
  GithubClaimOut({
    this.already = const [],
    this.claimed = const [],
  });
  /// Already were bound before the call and are unchanged by it.
  List<String> already;

  /// Claimed are the accounts this call bound. Never null; [] when none.
  List<String> claimed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubClaimOut &&
    _deepEquality.equals(other.already, already) &&
    _deepEquality.equals(other.claimed, claimed);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (already.hashCode) +
    (claimed.hashCode);

  @override
  String toString() => 'GithubClaimOut[already=$already, claimed=$claimed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'already'] = this.already;
      json[r'claimed'] = this.claimed;
    return json;
  }

  /// Returns a new [GithubClaimOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubClaimOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubClaimOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubClaimOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubClaimOut(
        already: json[r'already'] is Iterable
            ? (json[r'already'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        claimed: json[r'claimed'] is Iterable
            ? (json[r'claimed'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GithubClaimOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubClaimOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubClaimOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubClaimOut> mapFromJson(dynamic json) {
    final map = <String, GithubClaimOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubClaimOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubClaimOut-objects as value to a dart map
  static Map<String, List<GithubClaimOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubClaimOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubClaimOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

