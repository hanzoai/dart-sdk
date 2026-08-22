//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CrawlResult {
  /// Returns a new [CrawlResult] instance.
  CrawlResult({
    this.data,
    this.error,
    this.success,
  });
  /// Data is the page, present exactly when Success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CrawlDocument? data;

  /// Error says what stopped the fetch: the host was refused, unreachable, or served something that is not a document.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Success is whether the page was fetched and read. FALSE with an Error is a complete answer, not a fault — check this before reading Data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CrawlResult &&
    other.data == data &&
    other.error == error &&
    other.success == success;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (data == null ? 0 : data!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (success == null ? 0 : success!.hashCode);

  @override
  String toString() => 'CrawlResult[data=$data, error=$error, success=$success]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.data != null) {
      json[r'data'] = this.data;
    } else {
      json[r'data'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    return json;
  }

  /// Returns a new [CrawlResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CrawlResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CrawlResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CrawlResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CrawlResult(
        data: CrawlDocument.fromJson(json[r'data']),
        error: mapValueOfType<String>(json, r'error'),
        success: mapValueOfType<bool>(json, r'success'),
      );
    }
    return null;
  }

  static List<CrawlResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CrawlResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CrawlResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CrawlResult> mapFromJson(dynamic json) {
    final map = <String, CrawlResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CrawlResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CrawlResult-objects as value to a dart map
  static Map<String, List<CrawlResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CrawlResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CrawlResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

