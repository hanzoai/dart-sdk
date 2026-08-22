//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDatasetRows {
  /// Returns a new [RiskDatasetRows] instance.
  RiskDatasetRows({
    this.dataset,
    this.digest,
    this.dims = const [],
    this.limit,
    this.offset,
    this.rows = const [],
    this.version,
  });
  /// Dataset is the dataset the page was read from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? dataset;

  /// Digest is the version's fingerprint. An exported page that did not carry it would be bytes with no way to say which dataset they are.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? digest;

  /// Dims names what each coordinate of Point means, in Point's own order.
  List<String> dims;

  /// Limit is the page size actually served: the one asked for, clamped to the plane's own bound of 5000. Fewer rows than Limit means the version ended.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Offset is where this page starts in the version's own row order, which is by row id and therefore stable forever.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? offset;

  /// Rows is the page. Never null.
  List<RiskDatasetRow> rows;

  /// Version is which published version it was read from — the one asked for, or the newest published one when the request named none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDatasetRows &&
    other.dataset == dataset &&
    other.digest == digest &&
    _deepEquality.equals(other.dims, dims) &&
    other.limit == limit &&
    other.offset == offset &&
    _deepEquality.equals(other.rows, rows) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (dataset == null ? 0 : dataset!.hashCode) +
    (digest == null ? 0 : digest!.hashCode) +
    (dims.hashCode) +
    (limit == null ? 0 : limit!.hashCode) +
    (offset == null ? 0 : offset!.hashCode) +
    (rows.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'RiskDatasetRows[dataset=$dataset, digest=$digest, dims=$dims, limit=$limit, offset=$offset, rows=$rows, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.dataset != null) {
      json[r'dataset'] = this.dataset;
    } else {
      json[r'dataset'] = null;
    }
    if (this.digest != null) {
      json[r'digest'] = this.digest;
    } else {
      json[r'digest'] = null;
    }
      json[r'dims'] = this.dims;
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.offset != null) {
      json[r'offset'] = this.offset;
    } else {
      json[r'offset'] = null;
    }
      json[r'rows'] = this.rows;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDatasetRows] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDatasetRows? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDatasetRows[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDatasetRows[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDatasetRows(
        dataset: mapValueOfType<String>(json, r'dataset'),
        digest: mapValueOfType<String>(json, r'digest'),
        dims: json[r'dims'] is Iterable
            ? (json[r'dims'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        limit: mapValueOfType<int>(json, r'limit'),
        offset: mapValueOfType<int>(json, r'offset'),
        rows: RiskDatasetRow.listFromJson(json[r'rows']),
        version: mapValueOfType<int>(json, r'version'),
      );
    }
    return null;
  }

  static List<RiskDatasetRows> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDatasetRows>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDatasetRows.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDatasetRows> mapFromJson(dynamic json) {
    final map = <String, RiskDatasetRows>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDatasetRows.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDatasetRows-objects as value to a dart map
  static Map<String, List<RiskDatasetRows>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDatasetRows>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDatasetRows.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

