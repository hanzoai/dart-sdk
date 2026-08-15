//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RefreshOut {
  /// Returns a new [RefreshOut] instance.
  RefreshOut({
    this.connector,
    this.refreshed,
  });

  /// Connection is the connector with its new expiry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ConnView? connector;

  /// Refreshed is always true — a failed rotation is an HTTP error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? refreshed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefreshOut &&
    other.connector == connector &&
    other.refreshed == refreshed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connector == null ? 0 : connector!.hashCode) +
    (refreshed == null ? 0 : refreshed!.hashCode);

  @override
  String toString() => 'RefreshOut[connector=$connector, refreshed=$refreshed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connector != null) {
      json[r'connector'] = this.connector;
    } else {
      json[r'connector'] = null;
    }
    if (this.refreshed != null) {
      json[r'refreshed'] = this.refreshed;
    } else {
      json[r'refreshed'] = null;
    }
    return json;
  }

  /// Returns a new [RefreshOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefreshOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RefreshOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RefreshOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefreshOut(
        connector: ConnView.fromJson(json[r'connector']),
        refreshed: mapValueOfType<bool>(json, r'refreshed'),
      );
    }
    return null;
  }

  static List<RefreshOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefreshOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefreshOut> mapFromJson(dynamic json) {
    final map = <String, RefreshOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefreshOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefreshOut-objects as value to a dart map
  static Map<String, List<RefreshOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefreshOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefreshOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

