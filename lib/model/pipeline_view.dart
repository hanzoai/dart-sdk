//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PipelineView {
  /// Returns a new [PipelineView] instance.
  PipelineView({
    this.createdAt,
    this.default_,
    this.feeds = const [],
    this.filters,
    this.org,
    this.project,
    this.updatedAt,
  });

  /// CreatedAt is when the pipeline was first stored, RFC3339 UTC. Absent on the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Default is true when no pipeline is stored for this project and these are the built-in world feeds. Writing one turns it false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? default_;

  /// Feeds is the RSS/Atom feed URLs the pipeline reads. Every host is on the server's allowlist — a URL that is not cannot be stored.
  List<String> feeds;

  /// Filters narrows the merged feed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Filters? filters;

  /// Org is the tenant the pipeline belongs to, resolved server-side from the validated principal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  /// Project is the org sub-scope the pipeline belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? project;

  /// UpdatedAt is when it was last written, RFC3339 UTC. Absent on the default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updatedAt;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PipelineView &&
    other.createdAt == createdAt &&
    other.default_ == default_ &&
    _deepEquality.equals(other.feeds, feeds) &&
    other.filters == filters &&
    other.org == org &&
    other.project == project &&
    other.updatedAt == updatedAt;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (default_ == null ? 0 : default_!.hashCode) +
    (feeds.hashCode) +
    (filters == null ? 0 : filters!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (project == null ? 0 : project!.hashCode) +
    (updatedAt == null ? 0 : updatedAt!.hashCode);

  @override
  String toString() => 'PipelineView[createdAt=$createdAt, default_=$default_, feeds=$feeds, filters=$filters, org=$org, project=$project, updatedAt=$updatedAt]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.default_ != null) {
      json[r'default'] = this.default_;
    } else {
      json[r'default'] = null;
    }
      json[r'feeds'] = this.feeds;
    if (this.filters != null) {
      json[r'filters'] = this.filters;
    } else {
      json[r'filters'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.project != null) {
      json[r'project'] = this.project;
    } else {
      json[r'project'] = null;
    }
    if (this.updatedAt != null) {
      json[r'updatedAt'] = this.updatedAt;
    } else {
      json[r'updatedAt'] = null;
    }
    return json;
  }

  /// Returns a new [PipelineView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PipelineView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PipelineView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PipelineView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PipelineView(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        default_: mapValueOfType<bool>(json, r'default'),
        feeds: json[r'feeds'] is Iterable
            ? (json[r'feeds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        filters: Filters.fromJson(json[r'filters']),
        org: mapValueOfType<String>(json, r'org'),
        project: mapValueOfType<String>(json, r'project'),
        updatedAt: mapValueOfType<String>(json, r'updatedAt'),
      );
    }
    return null;
  }

  static List<PipelineView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PipelineView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PipelineView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PipelineView> mapFromJson(dynamic json) {
    final map = <String, PipelineView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PipelineView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PipelineView-objects as value to a dart map
  static Map<String, List<PipelineView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PipelineView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PipelineView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

