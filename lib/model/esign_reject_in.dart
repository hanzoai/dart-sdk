//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignRejectIn {
  /// Returns a new [EsignRejectIn] instance.
  EsignRejectIn({
    this.reason,
  });
  Object? reason;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignRejectIn &&
    other.reason == reason;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (reason == null ? 0 : reason!.hashCode);

  @override
  String toString() => 'EsignRejectIn[reason=$reason]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    return json;
  }

  /// Returns a new [EsignRejectIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignRejectIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignRejectIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignRejectIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignRejectIn(
        reason: mapValueOfType<Object>(json, r'reason'),
      );
    }
    return null;
  }

  static List<EsignRejectIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignRejectIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignRejectIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignRejectIn> mapFromJson(dynamic json) {
    final map = <String, EsignRejectIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignRejectIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignRejectIn-objects as value to a dart map
  static Map<String, List<EsignRejectIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignRejectIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignRejectIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

