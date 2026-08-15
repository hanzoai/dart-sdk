//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TargetList {
  /// Returns a new [TargetList] instance.
  TargetList({
    this.targets = const [],
  });

  /// Targets is every target registered to the caller's org.
  List<TargetView> targets;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TargetList &&
    _deepEquality.equals(other.targets, targets);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (targets.hashCode);

  @override
  String toString() => 'TargetList[targets=$targets]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'targets'] = this.targets;
    return json;
  }

  /// Returns a new [TargetList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TargetList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TargetList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TargetList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TargetList(
        targets: TargetView.listFromJson(json[r'targets']),
      );
    }
    return null;
  }

  static List<TargetList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TargetList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TargetList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TargetList> mapFromJson(dynamic json) {
    final map = <String, TargetList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TargetList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TargetList-objects as value to a dart map
  static Map<String, List<TargetList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TargetList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TargetList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

