//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArgoSyncWindows {
  /// Returns a new [ArgoSyncWindows] instance.
  ArgoSyncWindows({
    this.activeWindows = const [],
    this.assignedWindows = const [],
    this.canSync,
  });

  List<Object> activeWindows;

  List<Object> assignedWindows;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? canSync;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArgoSyncWindows &&
    _deepEquality.equals(other.activeWindows, activeWindows) &&
    _deepEquality.equals(other.assignedWindows, assignedWindows) &&
    other.canSync == canSync;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activeWindows.hashCode) +
    (assignedWindows.hashCode) +
    (canSync == null ? 0 : canSync!.hashCode);

  @override
  String toString() => 'ArgoSyncWindows[activeWindows=$activeWindows, assignedWindows=$assignedWindows, canSync=$canSync]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'activeWindows'] = this.activeWindows;
      json[r'assignedWindows'] = this.assignedWindows;
    if (this.canSync != null) {
      json[r'canSync'] = this.canSync;
    } else {
      json[r'canSync'] = null;
    }
    return json;
  }

  /// Returns a new [ArgoSyncWindows] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArgoSyncWindows? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArgoSyncWindows[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArgoSyncWindows[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArgoSyncWindows(
        activeWindows: json[r'activeWindows'] is Iterable
            ? (json[r'activeWindows'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        assignedWindows: json[r'assignedWindows'] is Iterable
            ? (json[r'assignedWindows'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
        canSync: mapValueOfType<bool>(json, r'canSync'),
      );
    }
    return null;
  }

  static List<ArgoSyncWindows> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArgoSyncWindows>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArgoSyncWindows.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArgoSyncWindows> mapFromJson(dynamic json) {
    final map = <String, ArgoSyncWindows>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArgoSyncWindows.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArgoSyncWindows-objects as value to a dart map
  static Map<String, List<ArgoSyncWindows>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArgoSyncWindows>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArgoSyncWindows.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

