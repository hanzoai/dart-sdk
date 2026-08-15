//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InvocationList {
  /// Returns a new [InvocationList] instance.
  InvocationList({
    this.invocations = const [],
  });

  /// Invocations is one row per past run, newest first.
  List<InvocationView> invocations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvocationList &&
    _deepEquality.equals(other.invocations, invocations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (invocations.hashCode);

  @override
  String toString() => 'InvocationList[invocations=$invocations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'invocations'] = this.invocations;
    return json;
  }

  /// Returns a new [InvocationList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvocationList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvocationList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvocationList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvocationList(
        invocations: InvocationView.listFromJson(json[r'invocations']),
      );
    }
    return null;
  }

  static List<InvocationList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvocationList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvocationList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvocationList> mapFromJson(dynamic json) {
    final map = <String, InvocationList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvocationList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvocationList-objects as value to a dart map
  static Map<String, List<InvocationList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvocationList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvocationList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

