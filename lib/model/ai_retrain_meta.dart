//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AiRetrainMeta {
  /// Returns a new [AiRetrainMeta] instance.
  AiRetrainMeta({
    this.events,
    this.gateBase,
    this.gateKind,
    this.gateMetric,
    this.gatePassed,
    this.gateValue,
    this.note,
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
  String? gateKind;

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
  bool? gatePassed;

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
  String? note;

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
  bool operator ==(Object other) => identical(this, other) || other is AiRetrainMeta &&
    other.events == events &&
    other.gateBase == gateBase &&
    other.gateKind == gateKind &&
    other.gateMetric == gateMetric &&
    other.gatePassed == gatePassed &&
    other.gateValue == gateValue &&
    other.note == note &&
    other.published == published &&
    other.trainedTime == trainedTime &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (events == null ? 0 : events!.hashCode) +
    (gateBase == null ? 0 : gateBase!.hashCode) +
    (gateKind == null ? 0 : gateKind!.hashCode) +
    (gateMetric == null ? 0 : gateMetric!.hashCode) +
    (gatePassed == null ? 0 : gatePassed!.hashCode) +
    (gateValue == null ? 0 : gateValue!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (published == null ? 0 : published!.hashCode) +
    (trainedTime == null ? 0 : trainedTime!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'AiRetrainMeta[events=$events, gateBase=$gateBase, gateKind=$gateKind, gateMetric=$gateMetric, gatePassed=$gatePassed, gateValue=$gateValue, note=$note, published=$published, trainedTime=$trainedTime, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.gateKind != null) {
      json[r'gate_kind'] = this.gateKind;
    } else {
      json[r'gate_kind'] = null;
    }
    if (this.gateMetric != null) {
      json[r'gate_metric'] = this.gateMetric;
    } else {
      json[r'gate_metric'] = null;
    }
    if (this.gatePassed != null) {
      json[r'gate_passed'] = this.gatePassed;
    } else {
      json[r'gate_passed'] = null;
    }
    if (this.gateValue != null) {
      json[r'gate_value'] = this.gateValue;
    } else {
      json[r'gate_value'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
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

  /// Returns a new [AiRetrainMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AiRetrainMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AiRetrainMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AiRetrainMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AiRetrainMeta(
        events: mapValueOfType<int>(json, r'events'),
        gateBase: num.parse('${json[r'gate_base']}'),
        gateKind: mapValueOfType<String>(json, r'gate_kind'),
        gateMetric: mapValueOfType<String>(json, r'gate_metric'),
        gatePassed: mapValueOfType<bool>(json, r'gate_passed'),
        gateValue: num.parse('${json[r'gate_value']}'),
        note: mapValueOfType<String>(json, r'note'),
        published: mapValueOfType<bool>(json, r'published'),
        trainedTime: mapValueOfType<String>(json, r'trained_time'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<AiRetrainMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AiRetrainMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AiRetrainMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AiRetrainMeta> mapFromJson(dynamic json) {
    final map = <String, AiRetrainMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AiRetrainMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AiRetrainMeta-objects as value to a dart map
  static Map<String, List<AiRetrainMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AiRetrainMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AiRetrainMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

