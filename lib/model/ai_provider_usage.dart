//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiProviderUsage {
  /// Returns a new [AiProviderUsage] instance.
  AiProviderUsage({
    this.available,
    this.byModel = const [],
    this.connected,
    this.currency,
    this.end,
    this.interval,
    this.note,
    this.provider,
    this.series = const [],
    this.start,
    this.totals,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  List<AiProviderUsageModelSpend> byModel;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? connected;

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

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? interval;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  List<AiProviderUsageSeriesPoint> series;

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
  AiProviderUsageTotals? totals;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiProviderUsage &&
    other.available == available &&
    _deepEquality.equals(other.byModel, byModel) &&
    other.connected == connected &&
    other.currency == currency &&
    other.end == end &&
    other.interval == interval &&
    other.note == note &&
    other.provider == provider &&
    _deepEquality.equals(other.series, series) &&
    other.start == start &&
    other.totals == totals;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (byModel.hashCode) +
    (connected == null ? 0 : connected!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (interval == null ? 0 : interval!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (series.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (totals == null ? 0 : totals!.hashCode);

  @override
  String toString() => 'AiProviderUsage[available=$available, byModel=$byModel, connected=$connected, currency=$currency, end=$end, interval=$interval, note=$note, provider=$provider, series=$series, start=$start, totals=$totals]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
      json[r'byModel'] = this.byModel;
    if (this.connected != null) {
      json[r'connected'] = this.connected;
    } else {
      json[r'connected'] = null;
    }
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
    if (this.interval != null) {
      json[r'interval'] = this.interval;
    } else {
      json[r'interval'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'series'] = this.series;
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.totals != null) {
      json[r'totals'] = this.totals;
    } else {
      json[r'totals'] = null;
    }
    return json;
  }

  /// Returns a new [AiProviderUsage] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiProviderUsage? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiProviderUsage[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiProviderUsage[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiProviderUsage(
        available: mapValueOfType<bool>(json, r'available'),
        byModel: AiProviderUsageModelSpend.listFromJson(json[r'byModel']),
        connected: mapValueOfType<bool>(json, r'connected'),
        currency: mapValueOfType<String>(json, r'currency'),
        end: mapValueOfType<String>(json, r'end'),
        interval: mapValueOfType<String>(json, r'interval'),
        note: mapValueOfType<String>(json, r'note'),
        provider: mapValueOfType<String>(json, r'provider'),
        series: AiProviderUsageSeriesPoint.listFromJson(json[r'series']),
        start: mapValueOfType<String>(json, r'start'),
        totals: AiProviderUsageTotals.fromJson(json[r'totals']),
      );
    }
    return null;
  }

  static List<AiProviderUsage> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiProviderUsage>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiProviderUsage.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiProviderUsage> mapFromJson(dynamic json) {
    final map = <String, AiProviderUsage>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiProviderUsage.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiProviderUsage-objects as value to a dart map
  static Map<String, List<AiProviderUsage>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiProviderUsage>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiProviderUsage.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

