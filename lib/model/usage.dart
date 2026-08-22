//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Usage {
  /// Returns a new [Usage] instance.
  Usage({
    this.costCents,
    this.series = const [],
    this.status,
  });
  /// null — no per-invocation cost source
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? costCents;

  /// one line per function that ran in the window
  List<CostLine> series;

  /// how those invocations ended
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StatusBreakdown? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Usage &&
    other.costCents == costCents &&
    _deepEquality.equals(other.series, series) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (costCents == null ? 0 : costCents!.hashCode) +
    (series.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Usage[costCents=$costCents, series=$series, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.costCents != null) {
      json[r'costCents'] = this.costCents;
    } else {
      json[r'costCents'] = null;
    }
      json[r'series'] = this.series;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Usage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Usage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Usage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Usage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Usage(
        costCents: mapValueOfType<int>(json, r'costCents'),
        series: CostLine.listFromJson(json[r'series']),
        status: StatusBreakdown.fromJson(json[r'status']),
      );
    }
    return null;
  }

  static List<Usage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Usage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Usage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Usage> mapFromJson(dynamic json) {
    final map = <String, Usage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Usage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Usage-objects as value to a dart map
  static Map<String, List<Usage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Usage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Usage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

