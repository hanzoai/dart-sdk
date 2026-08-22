//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptureBatch {
  /// Returns a new [CaptureBatch] instance.
  CaptureBatch({
    this.batch = const [],
    this.events = const [],
  });
  List<CaptureEvent> batch;

  List<CaptureEvent> events;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptureBatch &&
    _deepEquality.equals(other.batch, batch) &&
    _deepEquality.equals(other.events, events);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (batch.hashCode) +
    (events.hashCode);

  @override
  String toString() => 'CaptureBatch[batch=$batch, events=$events]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'batch'] = this.batch;
      json[r'events'] = this.events;
    return json;
  }

  /// Returns a new [CaptureBatch] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptureBatch? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptureBatch[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptureBatch[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptureBatch(
        batch: CaptureEvent.listFromJson(json[r'batch']),
        events: CaptureEvent.listFromJson(json[r'events']),
      );
    }
    return null;
  }

  static List<CaptureBatch> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptureBatch>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptureBatch.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptureBatch> mapFromJson(dynamic json) {
    final map = <String, CaptureBatch>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptureBatch.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptureBatch-objects as value to a dart map
  static Map<String, List<CaptureBatch>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptureBatch>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptureBatch.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

