//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FoundersIn {
  /// Returns a new [FoundersIn] instance.
  FoundersIn({
    this.founders = const [],
  });

  /// Founders is every founding stakeholder. Each needs a name and an email, and equityBps between 0 and 10000 (1% == 100 bps).
  List<Founder> founders;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FoundersIn &&
    _deepEquality.equals(other.founders, founders);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (founders.hashCode);

  @override
  String toString() => 'FoundersIn[founders=$founders]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'founders'] = this.founders;
    return json;
  }

  /// Returns a new [FoundersIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FoundersIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FoundersIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FoundersIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FoundersIn(
        founders: Founder.listFromJson(json[r'founders']),
      );
    }
    return null;
  }

  static List<FoundersIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FoundersIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FoundersIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FoundersIn> mapFromJson(dynamic json) {
    final map = <String, FoundersIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FoundersIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FoundersIn-objects as value to a dart map
  static Map<String, List<FoundersIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FoundersIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FoundersIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

