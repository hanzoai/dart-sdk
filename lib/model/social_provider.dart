//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialProvider {
  /// Returns a new [SocialProvider] instance.
  SocialProvider({
    this.credentialsConfigured,
    this.missingCredentials = const [],
    this.provider,
  });
  /// CredentialsConfigured is whether this deployment holds every OAuth application credential the network needs. It is a statement about the DEPLOYMENT, not about the caller: a connected account also needs its own access token before a post can go out.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? credentialsConfigured;

  /// MissingCredentials names the environment variables still unset for this network, so the answer is an installation instruction rather than a refusal. Absent when the credentials are complete. Only the NAMES appear here; a credential value is never reported.
  List<String> missingCredentials;

  /// Provider is the network: x, facebook, instagram, linkedin, tiktok, youtube or threads.  Example: \"x\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialProvider &&
    other.credentialsConfigured == credentialsConfigured &&
    _deepEquality.equals(other.missingCredentials, missingCredentials) &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (credentialsConfigured == null ? 0 : credentialsConfigured!.hashCode) +
    (missingCredentials.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'SocialProvider[credentialsConfigured=$credentialsConfigured, missingCredentials=$missingCredentials, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.credentialsConfigured != null) {
      json[r'credentialsConfigured'] = this.credentialsConfigured;
    } else {
      json[r'credentialsConfigured'] = null;
    }
      json[r'missingCredentials'] = this.missingCredentials;
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [SocialProvider] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialProvider? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialProvider[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialProvider[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialProvider(
        credentialsConfigured: mapValueOfType<bool>(json, r'credentialsConfigured'),
        missingCredentials: json[r'missingCredentials'] is Iterable
            ? (json[r'missingCredentials'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<SocialProvider> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialProvider>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialProvider.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialProvider> mapFromJson(dynamic json) {
    final map = <String, SocialProvider>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialProvider.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialProvider-objects as value to a dart map
  static Map<String, List<SocialProvider>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialProvider>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialProvider.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

