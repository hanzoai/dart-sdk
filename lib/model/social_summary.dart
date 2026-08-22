//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialSummary {
  /// Returns a new [SocialSummary] instance.
  SocialSummary({
    this.accounts,
    this.posts,
    this.published,
    this.scheduled,
  });
  /// Accounts is how many accounts the org has connected, in any status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? accounts;

  /// Posts is how many posts the org has, in any state.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? posts;

  /// Published is how many of them have published.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? published;

  /// Scheduled is how many of them are waiting for their scheduled time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? scheduled;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialSummary &&
    other.accounts == accounts &&
    other.posts == posts &&
    other.published == published &&
    other.scheduled == scheduled;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (accounts == null ? 0 : accounts!.hashCode) +
    (posts == null ? 0 : posts!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (scheduled == null ? 0 : scheduled!.hashCode);

  @override
  String toString() => 'SocialSummary[accounts=$accounts, posts=$posts, published=$published, scheduled=$scheduled]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.accounts != null) {
      json[r'accounts'] = this.accounts;
    } else {
      json[r'accounts'] = null;
    }
    if (this.posts != null) {
      json[r'posts'] = this.posts;
    } else {
      json[r'posts'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    if (this.scheduled != null) {
      json[r'scheduled'] = this.scheduled;
    } else {
      json[r'scheduled'] = null;
    }
    return json;
  }

  /// Returns a new [SocialSummary] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialSummary? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialSummary[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialSummary[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialSummary(
        accounts: mapValueOfType<int>(json, r'accounts'),
        posts: mapValueOfType<int>(json, r'posts'),
        published: mapValueOfType<int>(json, r'published'),
        scheduled: mapValueOfType<int>(json, r'scheduled'),
      );
    }
    return null;
  }

  static List<SocialSummary> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialSummary>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialSummary.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialSummary> mapFromJson(dynamic json) {
    final map = <String, SocialSummary>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialSummary.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialSummary-objects as value to a dart map
  static Map<String, List<SocialSummary>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialSummary>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialSummary.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

