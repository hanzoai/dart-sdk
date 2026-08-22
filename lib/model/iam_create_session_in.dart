//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class IamCreateSessionIn {
  /// Returns a new [IamCreateSessionIn] instance.
  IamCreateSessionIn({
    required this.application,
    this.exclusiveSignin,
    required this.name,
    required this.owner,
    this.sessionId = const [],
  });
  String application;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? exclusiveSignin;

  String name;

  String owner;

  List<String> sessionId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is IamCreateSessionIn &&
    other.application == application &&
    other.exclusiveSignin == exclusiveSignin &&
    other.name == name &&
    other.owner == owner &&
    _deepEquality.equals(other.sessionId, sessionId);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (application.hashCode) +
    (exclusiveSignin == null ? 0 : exclusiveSignin!.hashCode) +
    (name.hashCode) +
    (owner.hashCode) +
    (sessionId.hashCode);

  @override
  String toString() => 'IamCreateSessionIn[application=$application, exclusiveSignin=$exclusiveSignin, name=$name, owner=$owner, sessionId=$sessionId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'application'] = this.application;
    if (this.exclusiveSignin != null) {
      json[r'exclusiveSignin'] = this.exclusiveSignin;
    } else {
      json[r'exclusiveSignin'] = null;
    }
      json[r'name'] = this.name;
      json[r'owner'] = this.owner;
      json[r'sessionId'] = this.sessionId;
    return json;
  }

  /// Returns a new [IamCreateSessionIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static IamCreateSessionIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "IamCreateSessionIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "IamCreateSessionIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return IamCreateSessionIn(
        application: mapValueOfType<String>(json, r'application')!,
        exclusiveSignin: mapValueOfType<bool>(json, r'exclusiveSignin'),
        name: mapValueOfType<String>(json, r'name')!,
        owner: mapValueOfType<String>(json, r'owner')!,
        sessionId: json[r'sessionId'] is Iterable
            ? (json[r'sessionId'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<IamCreateSessionIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <IamCreateSessionIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = IamCreateSessionIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, IamCreateSessionIn> mapFromJson(dynamic json) {
    final map = <String, IamCreateSessionIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = IamCreateSessionIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of IamCreateSessionIn-objects as value to a dart map
  static Map<String, List<IamCreateSessionIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<IamCreateSessionIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = IamCreateSessionIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
    'application',
    'name',
    'owner',
  };
}

