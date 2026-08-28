//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiHistoryRetrain {
  /// Returns a new [AiHistoryRetrain] instance.
  AiHistoryRetrain({
    this.date,
    this.events,
    this.gateBase,
    this.gateMetric,
    this.gatePass,
    this.gateValue,
    this.holdoutAccuracy,
    this.published,
    this.trainedTime,
    this.version,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? gateBase;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gateMetric;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? gatePass;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? gateValue;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? holdoutAccuracy;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? published;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? trainedTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AiHistoryRetrain &&
    other.date == date &&
    other.events == events &&
    other.gateBase == gateBase &&
    other.gateMetric == gateMetric &&
    other.gatePass == gatePass &&
    other.gateValue == gateValue &&
    other.holdoutAccuracy == holdoutAccuracy &&
    other.published == published &&
    other.trainedTime == trainedTime &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (date == null ? 0 : date!.hashCode) +
    (events == null ? 0 : events!.hashCode) +
    (gateBase == null ? 0 : gateBase!.hashCode) +
    (gateMetric == null ? 0 : gateMetric!.hashCode) +
    (gatePass == null ? 0 : gatePass!.hashCode) +
    (gateValue == null ? 0 : gateValue!.hashCode) +
    (holdoutAccuracy == null ? 0 : holdoutAccuracy!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (trainedTime == null ? 0 : trainedTime!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'AiHistoryRetrain[date=$date, events=$events, gateBase=$gateBase, gateMetric=$gateMetric, gatePass=$gatePass, gateValue=$gateValue, holdoutAccuracy=$holdoutAccuracy, published=$published, trainedTime=$trainedTime, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.events != null) {
      json[r'events'] = this.events;
    } else {
      json[r'events'] = null;
    }
    if (this.gateBase != null) {
      json[r'gate_base'] = this.gateBase;
    } else {
      json[r'gate_base'] = null;
    }
    if (this.gateMetric != null) {
      json[r'gate_metric'] = this.gateMetric;
    } else {
      json[r'gate_metric'] = null;
    }
    if (this.gatePass != null) {
      json[r'gate_pass'] = this.gatePass;
    } else {
      json[r'gate_pass'] = null;
    }
    if (this.gateValue != null) {
      json[r'gate_value'] = this.gateValue;
    } else {
      json[r'gate_value'] = null;
    }
    if (this.holdoutAccuracy != null) {
      json[r'holdout_accuracy'] = this.holdoutAccuracy;
    } else {
      json[r'holdout_accuracy'] = null;
    }
    if (this.published != null) {
      json[r'published'] = this.published;
    } else {
      json[r'published'] = null;
    }
    if (this.trainedTime != null) {
      json[r'trained_time'] = this.trainedTime;
    } else {
      json[r'trained_time'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [AiHistoryRetrain] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiHistoryRetrain? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiHistoryRetrain[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiHistoryRetrain[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiHistoryRetrain(
        date: mapValueOfType<String>(json, r'date'),
        events: mapValueOfType<int>(json, r'events'),
        gateBase: num.parse('${json[r'gate_base']}'),
        gateMetric: mapValueOfType<String>(json, r'gate_metric'),
        gatePass: mapValueOfType<bool>(json, r'gate_pass'),
        gateValue: num.parse('${json[r'gate_value']}'),
        holdoutAccuracy: num.parse('${json[r'holdout_accuracy']}'),
        published: mapValueOfType<bool>(json, r'published'),
        trainedTime: mapValueOfType<String>(json, r'trained_time'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<AiHistoryRetrain> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiHistoryRetrain>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiHistoryRetrain.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiHistoryRetrain> mapFromJson(dynamic json) {
    final map = <String, AiHistoryRetrain>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiHistoryRetrain.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiHistoryRetrain-objects as value to a dart map
  static Map<String, List<AiHistoryRetrain>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiHistoryRetrain>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiHistoryRetrain.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

