//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FinanceUsageView {
  /// Returns a new [FinanceUsageView] instance.
  FinanceUsageView({
    this.currency,
    this.end,
    this.lines = const [],
    this.series = const [],
    this.start,
    this.totalCents,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  List<UsageLine> lines;

  List<Sample> series;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FinanceUsageView &&
    other.currency == currency &&
    other.end == end &&
    _deepEquality.equals(other.lines, lines) &&
    _deepEquality.equals(other.series, series) &&
    other.start == start &&
    other.totalCents == totalCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (currency == null ? 0 : currency!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (lines.hashCode) +
    (series.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (totalCents == null ? 0 : totalCents!.hashCode);

  @override
  String toString() => 'FinanceUsageView[currency=$currency, end=$end, lines=$lines, series=$series, start=$start, totalCents=$totalCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
      json[r'lines'] = this.lines;
      json[r'series'] = this.series;
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.totalCents != null) {
      json[r'totalCents'] = this.totalCents;
    } else {
      json[r'totalCents'] = null;
    }
    return json;
  }

  /// Returns a new [FinanceUsageView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FinanceUsageView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FinanceUsageView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FinanceUsageView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FinanceUsageView(
        currency: mapValueOfType<String>(json, r'currency'),
        end: mapValueOfType<String>(json, r'end'),
        lines: UsageLine.listFromJson(json[r'lines']),
        series: Sample.listFromJson(json[r'series']),
        start: mapValueOfType<String>(json, r'start'),
        totalCents: mapValueOfType<int>(json, r'totalCents'),
      );
    }
    return null;
  }

  static List<FinanceUsageView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FinanceUsageView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FinanceUsageView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FinanceUsageView> mapFromJson(dynamic json) {
    final map = <String, FinanceUsageView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FinanceUsageView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FinanceUsageView-objects as value to a dart map
  static Map<String, List<FinanceUsageView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FinanceUsageView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FinanceUsageView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

