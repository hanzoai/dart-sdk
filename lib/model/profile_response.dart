//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProfileResponse {
  /// Returns a new [ProfileResponse] instance.
  ProfileResponse({
    this.keyMetrics,
    this.signals = const {},
    this.stage,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ProfileMetrics? keyMetrics;

  Map<String, bool> signals;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProfileResponse &&
    other.keyMetrics == keyMetrics &&
    _deepEquality.equals(other.signals, signals) &&
    other.stage == stage;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keyMetrics == null ? 0 : keyMetrics!.hashCode) +
    (signals.hashCode) +
    (stage == null ? 0 : stage!.hashCode);

  @override
  String toString() => 'ProfileResponse[keyMetrics=$keyMetrics, signals=$signals, stage=$stage]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.keyMetrics != null) {
      json[r'keyMetrics'] = this.keyMetrics;
    } else {
      json[r'keyMetrics'] = null;
    }
      json[r'signals'] = this.signals;
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
    return json;
  }

  /// Returns a new [ProfileResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProfileResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProfileResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProfileResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProfileResponse(
        keyMetrics: ProfileMetrics.fromJson(json[r'keyMetrics']),
        signals: mapCastOfType<String, bool>(json, r'signals') ?? const {},
        stage: mapValueOfType<String>(json, r'stage'),
      );
    }
    return null;
  }

  static List<ProfileResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProfileResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProfileResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProfileResponse> mapFromJson(dynamic json) {
    final map = <String, ProfileResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProfileResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProfileResponse-objects as value to a dart map
  static Map<String, List<ProfileResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProfileResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProfileResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

