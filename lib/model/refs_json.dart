//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RefsJSON {
  /// Returns a new [RefsJSON] instance.
  RefsJSON({
    this.branches = const [],
    this.default_,
    this.tags = const [],
  });

  /// Branches are the repo's heads; empty on a repo with no commits.
  List<RefJSON> branches;

  /// Default is the branch name a caller gets when it asks for no ref.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? default_;

  /// Tags are the repo's tags; empty when there are none.
  List<RefJSON> tags;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefsJSON &&
    _deepEquality.equals(other.branches, branches) &&
    other.default_ == default_ &&
    _deepEquality.equals(other.tags, tags);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (branches.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (tags.hashCode);

  @override
  String toString() => 'RefsJSON[branches=$branches, default_=$default_, tags=$tags]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'branches'] = this.branches;
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
      json[r'tags'] = this.tags;
    return json;
  }

  /// Returns a new [RefsJSON] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefsJSON? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RefsJSON[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RefsJSON[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefsJSON(
        branches: RefJSON.listFromJson(json[r'branches']),
        default_: mapValueOfType<String>(json, r'default'),
        tags: RefJSON.listFromJson(json[r'tags']),
      );
    }
    return null;
  }

  static List<RefsJSON> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefsJSON>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefsJSON.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefsJSON> mapFromJson(dynamic json) {
    final map = <String, RefsJSON>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefsJSON.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefsJSON-objects as value to a dart map
  static Map<String, List<RefsJSON>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefsJSON>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefsJSON.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

