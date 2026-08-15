//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KvEntry {
  /// Returns a new [KvEntry] instance.
  KvEntry({
    this.created,
    this.key,
    this.operation,
    this.revision,
    this.value,
  });

  /// Created is when this revision was written, RFC3339.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// Key is the entry's key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Operation is what wrote the revision: put, del or purge.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? operation;

  /// Revision is the entry's revision in the bucket.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? revision;

  /// Value is the value as UTF-8 text; empty for delete and purge markers.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? value;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KvEntry &&
    other.created == created &&
    other.key == key &&
    other.operation == operation &&
    other.revision == revision &&
    other.value == value;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (operation == null ? 0 : operation!.hashCode) +
    (revision == null ? 0 : revision!.hashCode) +
    (value == null ? 0 : value!.hashCode);

  @override
  String toString() => 'KvEntry[created=$created, key=$key, operation=$operation, revision=$revision, value=$value]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.operation != null) {
      json[r'operation'] = this.operation;
    } else {
      json[r'operation'] = null;
    }
    if (this.revision != null) {
      json[r'revision'] = this.revision;
    } else {
      json[r'revision'] = null;
    }
    if (this.value != null) {
      json[r'value'] = this.value;
    } else {
      json[r'value'] = null;
    }
    return json;
  }

  /// Returns a new [KvEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KvEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KvEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KvEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KvEntry(
        created: mapValueOfType<String>(json, r'created'),
        key: mapValueOfType<String>(json, r'key'),
        operation: mapValueOfType<String>(json, r'operation'),
        revision: mapValueOfType<int>(json, r'revision'),
        value: mapValueOfType<String>(json, r'value'),
      );
    }
    return null;
  }

  static List<KvEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KvEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KvEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KvEntry> mapFromJson(dynamic json) {
    final map = <String, KvEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KvEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KvEntry-objects as value to a dart map
  static Map<String, List<KvEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KvEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KvEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

