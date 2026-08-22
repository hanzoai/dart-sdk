//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ActivationReq {
  /// Returns a new [ActivationReq] instance.
  ActivationReq({
    this.activate = const [],
    this.deactivate = const [],
  });
  /// Activate switches these tool names on for the caller's org and project.
  List<String> activate;

  /// Deactivate switches these tool names off.
  List<String> deactivate;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ActivationReq &&
    _deepEquality.equals(other.activate, activate) &&
    _deepEquality.equals(other.deactivate, deactivate);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activate.hashCode) +
    (deactivate.hashCode);

  @override
  String toString() => 'ActivationReq[activate=$activate, deactivate=$deactivate]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'activate'] = this.activate;
      json[r'deactivate'] = this.deactivate;
    return json;
  }

  /// Returns a new [ActivationReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ActivationReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ActivationReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ActivationReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ActivationReq(
        activate: json[r'activate'] is Iterable
            ? (json[r'activate'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        deactivate: json[r'deactivate'] is Iterable
            ? (json[r'deactivate'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<ActivationReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ActivationReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ActivationReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ActivationReq> mapFromJson(dynamic json) {
    final map = <String, ActivationReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ActivationReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ActivationReq-objects as value to a dart map
  static Map<String, List<ActivationReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ActivationReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ActivationReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

