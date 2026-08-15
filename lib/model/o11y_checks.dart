//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yChecks {
  /// Returns a new [O11yChecks] instance.
  O11yChecks({
    this.missingDefaultEnabledMetrics = const [],
    this.missingOptionalMetrics = const [],
    this.missingRequiredAttributes = const [],
    this.presentDefaultEnabledMetrics = const [],
    this.presentOptionalMetrics = const [],
    this.presentRequiredAttributes = const [],
    this.ready,
    this.type,
  });

  List<O11yMissingMetricsComponentEntry> missingDefaultEnabledMetrics;

  List<O11yMissingMetricsComponentEntry> missingOptionalMetrics;

  List<O11yMissingAttributesComponentEntry> missingRequiredAttributes;

  List<O11yMetricsComponentEntry> presentDefaultEnabledMetrics;

  List<O11yMetricsComponentEntry> presentOptionalMetrics;

  List<O11yAttributesComponentEntry> presentRequiredAttributes;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? ready;

  Object? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yChecks &&
    _deepEquality.equals(other.missingDefaultEnabledMetrics, missingDefaultEnabledMetrics) &&
    _deepEquality.equals(other.missingOptionalMetrics, missingOptionalMetrics) &&
    _deepEquality.equals(other.missingRequiredAttributes, missingRequiredAttributes) &&
    _deepEquality.equals(other.presentDefaultEnabledMetrics, presentDefaultEnabledMetrics) &&
    _deepEquality.equals(other.presentOptionalMetrics, presentOptionalMetrics) &&
    _deepEquality.equals(other.presentRequiredAttributes, presentRequiredAttributes) &&
    other.ready == ready &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (missingDefaultEnabledMetrics.hashCode) +
    (missingOptionalMetrics.hashCode) +
    (missingRequiredAttributes.hashCode) +
    (presentDefaultEnabledMetrics.hashCode) +
    (presentOptionalMetrics.hashCode) +
    (presentRequiredAttributes.hashCode) +
    (ready == null ? 0 : ready!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yChecks[missingDefaultEnabledMetrics=$missingDefaultEnabledMetrics, missingOptionalMetrics=$missingOptionalMetrics, missingRequiredAttributes=$missingRequiredAttributes, presentDefaultEnabledMetrics=$presentDefaultEnabledMetrics, presentOptionalMetrics=$presentOptionalMetrics, presentRequiredAttributes=$presentRequiredAttributes, ready=$ready, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'missingDefaultEnabledMetrics'] = this.missingDefaultEnabledMetrics;
      json[r'missingOptionalMetrics'] = this.missingOptionalMetrics;
      json[r'missingRequiredAttributes'] = this.missingRequiredAttributes;
      json[r'presentDefaultEnabledMetrics'] = this.presentDefaultEnabledMetrics;
      json[r'presentOptionalMetrics'] = this.presentOptionalMetrics;
      json[r'presentRequiredAttributes'] = this.presentRequiredAttributes;
    if (this.ready != null) {
      json[r'ready'] = this.ready;
    } else {
      json[r'ready'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yChecks] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yChecks? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yChecks[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yChecks[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yChecks(
        missingDefaultEnabledMetrics: O11yMissingMetricsComponentEntry.listFromJson(json[r'missingDefaultEnabledMetrics']),
        missingOptionalMetrics: O11yMissingMetricsComponentEntry.listFromJson(json[r'missingOptionalMetrics']),
        missingRequiredAttributes: O11yMissingAttributesComponentEntry.listFromJson(json[r'missingRequiredAttributes']),
        presentDefaultEnabledMetrics: O11yMetricsComponentEntry.listFromJson(json[r'presentDefaultEnabledMetrics']),
        presentOptionalMetrics: O11yMetricsComponentEntry.listFromJson(json[r'presentOptionalMetrics']),
        presentRequiredAttributes: O11yAttributesComponentEntry.listFromJson(json[r'presentRequiredAttributes']),
        ready: mapValueOfType<bool>(json, r'ready'),
        type: mapValueOfType<Object>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yChecks> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yChecks>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yChecks.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yChecks> mapFromJson(dynamic json) {
    final map = <String, O11yChecks>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yChecks.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yChecks-objects as value to a dart map
  static Map<String, List<O11yChecks>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yChecks>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yChecks.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

