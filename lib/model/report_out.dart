//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReportOut {
  /// Returns a new [ReportOut] instance.
  ReportOut({
    this.delivered,
  });
  /// Delivered is true when a waiting durable owner received this result. False means there was none to deliver to — an unknown or already-finished run — which is a clean no-op, not an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? delivered;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReportOut &&
    other.delivered == delivered;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (delivered == null ? 0 : delivered!.hashCode);

  @override
  String toString() => 'ReportOut[delivered=$delivered]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.delivered != null) {
      json[r'delivered'] = this.delivered;
    } else {
      json[r'delivered'] = null;
    }
    return json;
  }

  /// Returns a new [ReportOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReportOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReportOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReportOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReportOut(
        delivered: mapValueOfType<bool>(json, r'delivered'),
      );
    }
    return null;
  }

  static List<ReportOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReportOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReportOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReportOut> mapFromJson(dynamic json) {
    final map = <String, ReportOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReportOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReportOut-objects as value to a dart map
  static Map<String, List<ReportOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReportOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReportOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

