//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MirrorTargetView {
  /// Returns a new [MirrorTargetView] instance.
  MirrorTargetView({
    this.createdAt,
    this.host,
    this.id,
    this.repo,
    this.url,
  });

  /// CreatedAt is RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Host is the target's lowercased hostname, taken from URL and never the body.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// ID is the target's identifier (\"mir_…\"), the handle to remove it by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Repo is the repo whose advanced refs are pushed downstream.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? repo;

  /// URL is the canonical https remote, with any embedded credentials stripped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MirrorTargetView &&
    other.createdAt == createdAt &&
    other.host == host &&
    other.id == id &&
    other.repo == repo &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (repo == null ? 0 : repo!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'MirrorTargetView[createdAt=$createdAt, host=$host, id=$id, repo=$repo, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.repo != null) {
      json[r'repo'] = this.repo;
    } else {
      json[r'repo'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [MirrorTargetView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MirrorTargetView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MirrorTargetView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MirrorTargetView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MirrorTargetView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        host: mapValueOfType<String>(json, r'host'),
        id: mapValueOfType<String>(json, r'id'),
        repo: mapValueOfType<String>(json, r'repo'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<MirrorTargetView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MirrorTargetView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MirrorTargetView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MirrorTargetView> mapFromJson(dynamic json) {
    final map = <String, MirrorTargetView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MirrorTargetView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MirrorTargetView-objects as value to a dart map
  static Map<String, List<MirrorTargetView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MirrorTargetView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MirrorTargetView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

