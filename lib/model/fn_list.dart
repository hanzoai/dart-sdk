//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FnList {
  /// Returns a new [FnList] instance.
  FnList({
    this.functions = const [],
  });

  /// Functions is one row per published function.
  List<FunctionView> functions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FnList &&
    _deepEquality.equals(other.functions, functions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (functions.hashCode);

  @override
  String toString() => 'FnList[functions=$functions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'functions'] = this.functions;
    return json;
  }

  /// Returns a new [FnList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FnList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FnList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FnList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FnList(
        functions: FunctionView.listFromJson(json[r'functions']),
      );
    }
    return null;
  }

  static List<FnList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FnList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FnList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FnList> mapFromJson(dynamic json) {
    final map = <String, FnList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FnList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FnList-objects as value to a dart map
  static Map<String, List<FnList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FnList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FnList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

