//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GpuAlertList {
  /// Returns a new [GpuAlertList] instance.
  GpuAlertList({
    this.alerts = const [],
  });

  /// Alerts is always empty, and typed as a raw list because Visor exposes no alert inventory for this surface to shape: there is nothing to describe until there is something to return.
  List<Object> alerts;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GpuAlertList &&
    _deepEquality.equals(other.alerts, alerts);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (alerts.hashCode);

  @override
  String toString() => 'GpuAlertList[alerts=$alerts]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'alerts'] = this.alerts;
    return json;
  }

  /// Returns a new [GpuAlertList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GpuAlertList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GpuAlertList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GpuAlertList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GpuAlertList(
        alerts: json[r'alerts'] is Iterable
            ? (json[r'alerts'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<GpuAlertList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GpuAlertList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GpuAlertList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GpuAlertList> mapFromJson(dynamic json) {
    final map = <String, GpuAlertList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GpuAlertList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GpuAlertList-objects as value to a dart map
  static Map<String, List<GpuAlertList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GpuAlertList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GpuAlertList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

