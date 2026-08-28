//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiJudgePanelState {
  /// Returns a new [AiJudgePanelState] instance.
  AiJudgePanelState({
    this.available,
    this.benchmark,
    this.enabled,
    this.judges = const [],
    this.models = const [],
    this.sampleRate,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  AiJudgeBenchmark? benchmark;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  List<AiPanelJudge> judges;

  List<String> models;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? sampleRate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiJudgePanelState &&
    other.available == available &&
    other.benchmark == benchmark &&
    other.enabled == enabled &&
    _deepEquality.equals(other.judges, judges) &&
    _deepEquality.equals(other.models, models) &&
    other.sampleRate == sampleRate;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (judges.hashCode) +
    (models.hashCode) +
    (sampleRate == null ? 0 : sampleRate!.hashCode);

  @override
  String toString() => 'AiJudgePanelState[available=$available, benchmark=$benchmark, enabled=$enabled, judges=$judges, models=$models, sampleRate=$sampleRate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
      json[r'judges'] = this.judges;
      json[r'models'] = this.models;
    if (this.sampleRate != null) {
      json[r'sampleRate'] = this.sampleRate;
    } else {
      json[r'sampleRate'] = null;
    }
    return json;
  }

  /// Returns a new [AiJudgePanelState] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiJudgePanelState? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiJudgePanelState[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiJudgePanelState[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiJudgePanelState(
        available: mapValueOfType<bool>(json, r'available'),
        benchmark: AiJudgeBenchmark.fromJson(json[r'benchmark']),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        judges: AiPanelJudge.listFromJson(json[r'judges']),
        models: json[r'models'] is Iterable
            ? (json[r'models'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        sampleRate: num.parse('${json[r'sampleRate']}'),
      );
    }
    return null;
  }

  static List<AiJudgePanelState> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiJudgePanelState>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiJudgePanelState.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiJudgePanelState> mapFromJson(dynamic json) {
    final map = <String, AiJudgePanelState>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiJudgePanelState.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiJudgePanelState-objects as value to a dart map
  static Map<String, List<AiJudgePanelState>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiJudgePanelState>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiJudgePanelState.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

