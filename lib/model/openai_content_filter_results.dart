//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiContentFilterResults {
  /// Returns a new [OpenaiContentFilterResults] instance.
  OpenaiContentFilterResults({
    this.hate,
    this.jailbreak,
    this.profanity,
    this.selfHarm,
    this.sexual,
    this.violence,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiHate? hate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiJailBreak? jailbreak;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiProfanity? profanity;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiSelfHarm? selfHarm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiSexual? sexual;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiViolence? violence;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiContentFilterResults &&
    other.hate == hate &&
    other.jailbreak == jailbreak &&
    other.profanity == profanity &&
    other.selfHarm == selfHarm &&
    other.sexual == sexual &&
    other.violence == violence;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hate == null ? 0 : hate!.hashCode) +
    (jailbreak == null ? 0 : jailbreak!.hashCode) +
    (profanity == null ? 0 : profanity!.hashCode) +
    (selfHarm == null ? 0 : selfHarm!.hashCode) +
    (sexual == null ? 0 : sexual!.hashCode) +
    (violence == null ? 0 : violence!.hashCode);

  @override
  String toString() => 'OpenaiContentFilterResults[hate=$hate, jailbreak=$jailbreak, profanity=$profanity, selfHarm=$selfHarm, sexual=$sexual, violence=$violence]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hate != null) {
      json[r'hate'] = this.hate;
    } else {
      json[r'hate'] = null;
    }
    if (this.jailbreak != null) {
      json[r'jailbreak'] = this.jailbreak;
    } else {
      json[r'jailbreak'] = null;
    }
    if (this.profanity != null) {
      json[r'profanity'] = this.profanity;
    } else {
      json[r'profanity'] = null;
    }
    if (this.selfHarm != null) {
      json[r'self_harm'] = this.selfHarm;
    } else {
      json[r'self_harm'] = null;
    }
    if (this.sexual != null) {
      json[r'sexual'] = this.sexual;
    } else {
      json[r'sexual'] = null;
    }
    if (this.violence != null) {
      json[r'violence'] = this.violence;
    } else {
      json[r'violence'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiContentFilterResults] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiContentFilterResults? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiContentFilterResults[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiContentFilterResults[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiContentFilterResults(
        hate: OpenaiHate.fromJson(json[r'hate']),
        jailbreak: OpenaiJailBreak.fromJson(json[r'jailbreak']),
        profanity: OpenaiProfanity.fromJson(json[r'profanity']),
        selfHarm: OpenaiSelfHarm.fromJson(json[r'self_harm']),
        sexual: OpenaiSexual.fromJson(json[r'sexual']),
        violence: OpenaiViolence.fromJson(json[r'violence']),
      );
    }
    return null;
  }

  static List<OpenaiContentFilterResults> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiContentFilterResults>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiContentFilterResults.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiContentFilterResults> mapFromJson(dynamic json) {
    final map = <String, OpenaiContentFilterResults>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiContentFilterResults.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiContentFilterResults-objects as value to a dart map
  static Map<String, List<OpenaiContentFilterResults>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiContentFilterResults>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiContentFilterResults.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

