//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GithubReposOut {
  /// Returns a new [GithubReposOut] instance.
  GithubReposOut({
    this.repos = const [],
    this.unread = const [],
  });
  /// Repos is every repo the installation grants. Never null; [] when none.
  List<GithubRepoView> repos;

  /// Unread names the connected accounts this answer could NOT read, so a short list is distinguishable from a complete one. Absent when the answer is whole.  The fan-out is per installation, and one account failing used to be dropped in silence: the response stayed 200 and simply carried fewer repositories, erroring only when EVERY account failed. Measured, twice in a row, minutes apart: 1475 repositories, then 1157 — a whole installation missing with nothing in the answer to say so. Anything driven off the list then under-covers and reports success, which is the failure this field ends.
  List<String> unread;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GithubReposOut &&
    _deepEquality.equals(other.repos, repos) &&
    _deepEquality.equals(other.unread, unread);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (repos.hashCode) +
    (unread.hashCode);

  @override
  String toString() => 'GithubReposOut[repos=$repos, unread=$unread]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'repos'] = this.repos;
      json[r'unread'] = this.unread;
    return json;
  }

  /// Returns a new [GithubReposOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GithubReposOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GithubReposOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GithubReposOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GithubReposOut(
        repos: GithubRepoView.listFromJson(json[r'repos']),
        unread: json[r'unread'] is Iterable
            ? (json[r'unread'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GithubReposOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GithubReposOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GithubReposOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GithubReposOut> mapFromJson(dynamic json) {
    final map = <String, GithubReposOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GithubReposOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GithubReposOut-objects as value to a dart map
  static Map<String, List<GithubReposOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GithubReposOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GithubReposOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

