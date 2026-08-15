//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PairingQueue {
  /// Returns a new [PairingQueue] instance.
  PairingQueue({
    this.pending = const [],
  });

  /// Pending is every unexpired pairing request waiting on an org admin, each carrying the channel, the requesting sender and the code to approve it with.
  List<PairingView> pending;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PairingQueue &&
    _deepEquality.equals(other.pending, pending);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (pending.hashCode);

  @override
  String toString() => 'PairingQueue[pending=$pending]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'pending'] = this.pending;
    return json;
  }

  /// Returns a new [PairingQueue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PairingQueue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PairingQueue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PairingQueue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PairingQueue(
        pending: PairingView.listFromJson(json[r'pending']),
      );
    }
    return null;
  }

  static List<PairingQueue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PairingQueue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PairingQueue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PairingQueue> mapFromJson(dynamic json) {
    final map = <String, PairingQueue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PairingQueue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PairingQueue-objects as value to a dart map
  static Map<String, List<PairingQueue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PairingQueue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PairingQueue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

