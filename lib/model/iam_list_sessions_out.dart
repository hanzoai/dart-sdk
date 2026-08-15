//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamListSessionsOut {
  /// Returns a new [IamListSessionsOut] instance.
  IamListSessionsOut({
    this.sessions = const [],
  });

  List<IamSession> sessions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamListSessionsOut &&
    _deepEquality.equals(other.sessions, sessions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (sessions.hashCode);

  @override
  String toString() => 'IamListSessionsOut[sessions=$sessions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'sessions'] = this.sessions;
    return json;
  }

  /// Returns a new [IamListSessionsOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamListSessionsOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamListSessionsOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamListSessionsOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamListSessionsOut(
        sessions: IamSession.listFromJson(json[r'sessions']),
      );
    }
    return null;
  }

  static List<IamListSessionsOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamListSessionsOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamListSessionsOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamListSessionsOut> mapFromJson(dynamic json) {
    final map = <String, IamListSessionsOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamListSessionsOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamListSessionsOut-objects as value to a dart map
  static Map<String, List<IamListSessionsOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamListSessionsOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamListSessionsOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

