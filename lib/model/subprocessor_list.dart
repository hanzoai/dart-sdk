//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SubprocessorList {
  /// Returns a new [SubprocessorList] instance.
  SubprocessorList({
    this.subprocessors = const [],
  });
  /// Subprocessors is the list, each naming at least what it is and what it is for — a name alone says nothing.
  List<Object> subprocessors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SubprocessorList &&
    _deepEquality.equals(other.subprocessors, subprocessors);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (subprocessors.hashCode);

  @override
  String toString() => 'SubprocessorList[subprocessors=$subprocessors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'subprocessors'] = this.subprocessors;
    return json;
  }

  /// Returns a new [SubprocessorList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SubprocessorList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SubprocessorList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SubprocessorList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SubprocessorList(
        subprocessors: json[r'subprocessors'] is Iterable
            ? (json[r'subprocessors'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<SubprocessorList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SubprocessorList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SubprocessorList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SubprocessorList> mapFromJson(dynamic json) {
    final map = <String, SubprocessorList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SubprocessorList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SubprocessorList-objects as value to a dart map
  static Map<String, List<SubprocessorList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SubprocessorList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SubprocessorList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

