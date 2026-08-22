//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IndexStats {
  /// Returns a new [IndexStats] instance.
  IndexStats({
    this.databaseSize,
    this.indexes = const {},
  });
  /// DatabaseSize is the org's total document count across its indexes. It is a count, not bytes: the store is shared by every tenant, so a byte figure would either be the whole file (another tenant's size) or a fiction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? databaseSize;

  /// Indexes maps each index uid to its own count.
  Map<String, IndexCount> indexes;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IndexStats &&
    other.databaseSize == databaseSize &&
    _deepEquality.equals(other.indexes, indexes);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (databaseSize == null ? 0 : databaseSize!.hashCode) +
    (indexes.hashCode);

  @override
  String toString() => 'IndexStats[databaseSize=$databaseSize, indexes=$indexes]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.databaseSize != null) {
      json[r'databaseSize'] = this.databaseSize;
    } else {
      json[r'databaseSize'] = null;
    }
      json[r'indexes'] = this.indexes;
    return json;
  }

  /// Returns a new [IndexStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IndexStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IndexStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IndexStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IndexStats(
        databaseSize: mapValueOfType<int>(json, r'databaseSize'),
        indexes: IndexCount.mapFromJson(json[r'indexes']),
      );
    }
    return null;
  }

  static List<IndexStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IndexStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IndexStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IndexStats> mapFromJson(dynamic json) {
    final map = <String, IndexStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IndexStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IndexStats-objects as value to a dart map
  static Map<String, List<IndexStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IndexStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IndexStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

