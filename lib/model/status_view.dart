//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StatusView {
  /// Returns a new [StatusView] instance.
  StatusView({
    this.disclaimer,
    this.provider,
    this.verifications,
  });
  /// Disclaimer states that statuses are provider-reported, never a platform assertion of legal or regulatory compliance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? disclaimer;

  /// Provider is the wired verification provider's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Verifications tallies the org's verifications by provider-reported status.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  VerificationTally? verifications;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StatusView &&
    other.disclaimer == disclaimer &&
    other.provider == provider &&
    other.verifications == verifications;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (disclaimer == null ? 0 : disclaimer!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (verifications == null ? 0 : verifications!.hashCode);

  @override
  String toString() => 'StatusView[disclaimer=$disclaimer, provider=$provider, verifications=$verifications]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.disclaimer != null) {
      json[r'disclaimer'] = this.disclaimer;
    } else {
      json[r'disclaimer'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.verifications != null) {
      json[r'verifications'] = this.verifications;
    } else {
      json[r'verifications'] = null;
    }
    return json;
  }

  /// Returns a new [StatusView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StatusView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StatusView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StatusView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StatusView(
        disclaimer: mapValueOfType<String>(json, r'disclaimer'),
        provider: mapValueOfType<String>(json, r'provider'),
        verifications: VerificationTally.fromJson(json[r'verifications']),
      );
    }
    return null;
  }

  static List<StatusView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StatusView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StatusView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StatusView> mapFromJson(dynamic json) {
    final map = <String, StatusView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StatusView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StatusView-objects as value to a dart map
  static Map<String, List<StatusView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StatusView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StatusView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

