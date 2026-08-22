//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class KycStartOut {
  /// Returns a new [KycStartOut] instance.
  KycStartOut({
    this.formation,
    this.provider,
    this.sessions = const [],
  });
  /// Formation is the org's incorporation record, with each founder's session reference and status recorded on it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Formation? formation;

  /// Provider is the wired identity-verification provider's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Sessions is one entry per founder, in the order the founders are recorded.
  List<KycSession> sessions;

  @override
  bool operator ==(Object other) => identical(this, other) || other is KycStartOut &&
    other.formation == formation &&
    other.provider == provider &&
    _deepEquality.equals(other.sessions, sessions);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (formation == null ? 0 : formation!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (sessions.hashCode);

  @override
  String toString() => 'KycStartOut[formation=$formation, provider=$provider, sessions=$sessions]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.formation != null) {
      json[r'formation'] = this.formation;
    } else {
      json[r'formation'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
      json[r'sessions'] = this.sessions;
    return json;
  }

  /// Returns a new [KycStartOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static KycStartOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "KycStartOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "KycStartOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return KycStartOut(
        formation: Formation.fromJson(json[r'formation']),
        provider: mapValueOfType<String>(json, r'provider'),
        sessions: KycSession.listFromJson(json[r'sessions']),
      );
    }
    return null;
  }

  static List<KycStartOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <KycStartOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = KycStartOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, KycStartOut> mapFromJson(dynamic json) {
    final map = <String, KycStartOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = KycStartOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of KycStartOut-objects as value to a dart map
  static Map<String, List<KycStartOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<KycStartOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = KycStartOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

