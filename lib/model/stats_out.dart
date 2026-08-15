//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StatsOut {
  /// Returns a new [StatsOut] instance.
  StatsOut({
    this.admin,
    this.metrics,
    this.statistics,
  });

  /// Admin is the upstream service's server-panel flag, always false here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? admin;

  /// Metrics is the upstream transactor's metrics block. This server does not populate it, so it is always the empty object — the front reads the key, not its contents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Object? metrics;

  /// Statistics carries the live sessions.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  StatsSessions? statistics;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatsOut &&
    other.admin == admin &&
    other.metrics == metrics &&
    other.statistics == statistics;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (admin == null ? 0 : admin!.hashCode) +
    (metrics == null ? 0 : metrics!.hashCode) +
    (statistics == null ? 0 : statistics!.hashCode);

  @override
  String toString() => 'StatsOut[admin=$admin, metrics=$metrics, statistics=$statistics]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.admin != null) {
      json[r'admin'] = this.admin;
    } else {
      json[r'admin'] = null;
    }
    if (this.metrics != null) {
      json[r'metrics'] = this.metrics;
    } else {
      json[r'metrics'] = null;
    }
    if (this.statistics != null) {
      json[r'statistics'] = this.statistics;
    } else {
      json[r'statistics'] = null;
    }
    return json;
  }

  /// Returns a new [StatsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatsOut(
        admin: mapValueOfType<bool>(json, r'admin'),
        metrics: mapValueOfType<Object>(json, r'metrics'),
        statistics: StatsSessions.fromJson(json[r'statistics']),
      );
    }
    return null;
  }

  static List<StatsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatsOut> mapFromJson(dynamic json) {
    final map = <String, StatsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatsOut-objects as value to a dart map
  static Map<String, List<StatsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

