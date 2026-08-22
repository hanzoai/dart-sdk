//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MetricRow {
  /// Returns a new [MetricRow] instance.
  MetricRow({
    this.createdAt,
    this.currentVersion,
    this.lastUpdatedAt,
    this.name,
    this.type,
    this.versions,
  });
  /// CreatedAt is when version 1 was written, RFC 3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// CurrentVer is the version number served as current. It always equals `versions`: numbering is dense from 1, and deleting a prompt takes its whole history with it rather than leaving a gap.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? currentVersion;

  /// LastUpdatedAt is when the newest version was appended, RFC 3339 UTC — the age of the template you would get today.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? lastUpdatedAt;

  /// Name is the prompt this row is about — its org-unique handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Type is the current version's kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  /// Versions is how many revisions the prompt has, COUNTED in the store and uncapped — so it can exceed the 100 entries a list row or a detail response carries. Note the type: here `versions` is a number, while on a list row it is the list of version numbers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? versions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MetricRow &&
    other.createdAt == createdAt &&
    other.currentVersion == currentVersion &&
    other.lastUpdatedAt == lastUpdatedAt &&
    other.name == name &&
    other.type == type &&
    other.versions == versions;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currentVersion == null ? 0 : currentVersion!.hashCode) +
    (lastUpdatedAt == null ? 0 : lastUpdatedAt!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (type == null ? 0 : type!.hashCode) +
    (versions == null ? 0 : versions!.hashCode);

  @override
  String toString() => 'MetricRow[createdAt=$createdAt, currentVersion=$currentVersion, lastUpdatedAt=$lastUpdatedAt, name=$name, type=$type, versions=$versions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.currentVersion != null) {
      json[r'currentVersion'] = this.currentVersion;
    } else {
      json[r'currentVersion'] = null;
    }
    if (this.lastUpdatedAt != null) {
      json[r'lastUpdatedAt'] = this.lastUpdatedAt;
    } else {
      json[r'lastUpdatedAt'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    if (this.versions != null) {
      json[r'versions'] = this.versions;
    } else {
      json[r'versions'] = null;
    }
    return json;
  }

  /// Returns a new [MetricRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MetricRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MetricRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MetricRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MetricRow(
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        currentVersion: mapValueOfType<int>(json, r'currentVersion'),
        lastUpdatedAt: mapValueOfType<String>(json, r'lastUpdatedAt'),
        name: mapValueOfType<String>(json, r'name'),
        type: mapValueOfType<String>(json, r'type'),
        versions: mapValueOfType<int>(json, r'versions'),
      );
    }
    return null;
  }

  static List<MetricRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MetricRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MetricRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MetricRow> mapFromJson(dynamic json) {
    final map = <String, MetricRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MetricRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MetricRow-objects as value to a dart map
  static Map<String, List<MetricRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MetricRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MetricRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

