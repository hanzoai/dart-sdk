//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yMetricsResponse {
  /// Returns a new [O11yMetricsResponse] instance.
  O11yMetricsResponse({
    this.product,
    this.range,
    this.series,
    this.summary,
    this.usage,
  });
  /// Product is the service these numbers are about, echoed back.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? product;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yMetricsResponseRange? range;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yMetricsResponseSeries? series;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yMetricsResponseSummary? summary;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yMetricsResponseUsage? usage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yMetricsResponse &&
    other.product == product &&
    other.range == range &&
    other.series == series &&
    other.summary == summary &&
    other.usage == usage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (product == null ? 0 : product!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (series == null ? 0 : series!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (usage == null ? 0 : usage!.hashCode);

  @override
  String toString() => 'O11yMetricsResponse[product=$product, range=$range, series=$series, summary=$summary, usage=$usage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.product != null) {
      json[r'product'] = this.product;
    } else {
      json[r'product'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.series != null) {
      json[r'series'] = this.series;
    } else {
      json[r'series'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.usage != null) {
      json[r'usage'] = this.usage;
    } else {
      json[r'usage'] = null;
    }
    return json;
  }

  /// Returns a new [O11yMetricsResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yMetricsResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yMetricsResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yMetricsResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yMetricsResponse(
        product: mapValueOfType<String>(json, r'product'),
        range: O11yMetricsResponseRange.fromJson(json[r'range']),
        series: O11yMetricsResponseSeries.fromJson(json[r'series']),
        summary: O11yMetricsResponseSummary.fromJson(json[r'summary']),
        usage: O11yMetricsResponseUsage.fromJson(json[r'usage']),
      );
    }
    return null;
  }

  static List<O11yMetricsResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yMetricsResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yMetricsResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yMetricsResponse> mapFromJson(dynamic json) {
    final map = <String, O11yMetricsResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yMetricsResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yMetricsResponse-objects as value to a dart map
  static Map<String, List<O11yMetricsResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yMetricsResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yMetricsResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

