//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PullView {
  /// Returns a new [PullView] instance.
  PullView({
    this.author,
    this.base_,
    this.body,
    this.createdAt,
    this.head,
    this.mergedRev,
    this.number,
    this.repo,
    this.state,
    this.title,
    this.updatedAt,
  });

  /// Author is the user who opened it; empty for a caller with no user.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? author;

  /// Base is the branch the work is proposed into.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? base_;

  /// Body is the longer description; empty when none was given.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? body;

  /// CreatedAt is RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Head is the branch holding the work.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? head;

  /// MergedRev is what base points at now that the merge landed. Empty while the proposal is open.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? mergedRev;

  /// Number is the proposal's per-repo handle, dense from 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? number;

  /// Repo is the repository the proposal belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// State is \"open\" or \"merged\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Title is the one-line summary.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// UpdatedAt is RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PullView &&
    other.author == author &&
    other.base_ == base_ &&
    other.body == body &&
    other.createdAt == createdAt &&
    other.head == head &&
    other.mergedRev == mergedRev &&
    other.number == number &&
    other.repo == repo &&
    other.state == state &&
    other.title == title &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (author == null ? 0 : author!.hashCode) +
    (base_ == null ? 0 : base_!.hashCode) +
    (body == null ? 0 : body!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (head == null ? 0 : head!.hashCode) +
    (mergedRev == null ? 0 : mergedRev!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'PullView[author=$author, base_=$base_, body=$body, createdAt=$createdAt, head=$head, mergedRev=$mergedRev, number=$number, repo=$repo, state=$state, title=$title, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.author != null) {
      json[r'author'] = this.author;
    } else {
      json[r'author'] = null;
    }
    if (this.base_ != null) {
      json[r'base'] = this.base_;
    } else {
      json[r'base'] = null;
    }
    if (this.body != null) {
      json[r'body'] = this.body;
    } else {
      json[r'body'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.head != null) {
      json[r'head'] = this.head;
    } else {
      json[r'head'] = null;
    }
    if (this.mergedRev != null) {
      json[r'mergedRev'] = this.mergedRev;
    } else {
      json[r'mergedRev'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [PullView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PullView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PullView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PullView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PullView(
        author: mapValueOfType<String>(json, r'author'),
        base_: mapValueOfType<String>(json, r'base'),
        body: mapValueOfType<String>(json, r'body'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        head: mapValueOfType<String>(json, r'head'),
        mergedRev: mapValueOfType<String>(json, r'mergedRev'),
        number: mapValueOfType<int>(json, r'number'),
        repo: mapValueOfType<String>(json, r'repo'),
        state: mapValueOfType<String>(json, r'state'),
        title: mapValueOfType<String>(json, r'title'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<PullView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PullView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PullView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PullView> mapFromJson(dynamic json) {
    final map = <String, PullView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PullView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PullView-objects as value to a dart map
  static Map<String, List<PullView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PullView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PullView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

