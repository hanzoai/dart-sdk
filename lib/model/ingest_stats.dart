//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IngestStats {
  /// Returns a new [IngestStats] instance.
  IngestStats({
    this.async_,
    this.documentsIndexed,
    this.errors = const [],
    this.filesIngested,
    this.filesSkipped,
    this.indexName,
    this.skipped = const [],
    this.source_,
    this.store,
    this.workflowId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? async_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? documentsIndexed;

  List<String> errors;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? filesIngested;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? filesSkipped;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? indexName;

  List<String> skipped;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? store;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workflowId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IngestStats &&
    other.async_ == async_ &&
    other.documentsIndexed == documentsIndexed &&
    _deepEquality.equals(other.errors, errors) &&
    other.filesIngested == filesIngested &&
    other.filesSkipped == filesSkipped &&
    other.indexName == indexName &&
    _deepEquality.equals(other.skipped, skipped) &&
    other.source_ == source_ &&
    other.store == store &&
    other.workflowId == workflowId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (async_ == null ? 0 : async_!.hashCode) +
    (documentsIndexed == null ? 0 : documentsIndexed!.hashCode) +
    (errors.hashCode) +
    (filesIngested == null ? 0 : filesIngested!.hashCode) +
    (filesSkipped == null ? 0 : filesSkipped!.hashCode) +
    (indexName == null ? 0 : indexName!.hashCode) +
    (skipped.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (store == null ? 0 : store!.hashCode) +
    (workflowId == null ? 0 : workflowId!.hashCode);

  @override
  String toString() => 'IngestStats[async_=$async_, documentsIndexed=$documentsIndexed, errors=$errors, filesIngested=$filesIngested, filesSkipped=$filesSkipped, indexName=$indexName, skipped=$skipped, source_=$source_, store=$store, workflowId=$workflowId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.async_ != null) {
      json[r'async'] = this.async_;
    } else {
      json[r'async'] = null;
    }
    if (this.documentsIndexed != null) {
      json[r'documentsIndexed'] = this.documentsIndexed;
    } else {
      json[r'documentsIndexed'] = null;
    }
      json[r'errors'] = this.errors;
    if (this.filesIngested != null) {
      json[r'filesIngested'] = this.filesIngested;
    } else {
      json[r'filesIngested'] = null;
    }
    if (this.filesSkipped != null) {
      json[r'filesSkipped'] = this.filesSkipped;
    } else {
      json[r'filesSkipped'] = null;
    }
    if (this.indexName != null) {
      json[r'indexName'] = this.indexName;
    } else {
      json[r'indexName'] = null;
    }
      json[r'skipped'] = this.skipped;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    if (this.workflowId != null) {
      json[r'workflowId'] = this.workflowId;
    } else {
      json[r'workflowId'] = null;
    }
    return json;
  }

  /// Returns a new [IngestStats] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IngestStats? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IngestStats[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IngestStats[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IngestStats(
        async_: mapValueOfType<bool>(json, r'async'),
        documentsIndexed: mapValueOfType<int>(json, r'documentsIndexed'),
        errors: json[r'errors'] is Iterable
            ? (json[r'errors'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        filesIngested: mapValueOfType<int>(json, r'filesIngested'),
        filesSkipped: mapValueOfType<int>(json, r'filesSkipped'),
        indexName: mapValueOfType<String>(json, r'indexName'),
        skipped: json[r'skipped'] is Iterable
            ? (json[r'skipped'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        source_: mapValueOfType<String>(json, r'source'),
        store: mapValueOfType<String>(json, r'store'),
        workflowId: mapValueOfType<String>(json, r'workflowId'),
      );
    }
    return null;
  }

  static List<IngestStats> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IngestStats>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IngestStats.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IngestStats> mapFromJson(dynamic json) {
    final map = <String, IngestStats>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IngestStats.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IngestStats-objects as value to a dart map
  static Map<String, List<IngestStats>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IngestStats>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IngestStats.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

