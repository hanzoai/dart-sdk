//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SocialAccountWrite {
  /// Returns a new [SocialAccountWrite] instance.
  SocialAccountWrite({
    this.handle,
    this.provider,
    this.status,
  });
  /// Handle is the account's public name on the network. Omitting it BLANKS the stored handle: this is a replacement, not a merge.  Example: \"@acme\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  /// Provider is the network this account is on: x, facebook, instagram, linkedin, tiktok, youtube or threads. Omitted means x.  Example: \"x\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Status is the connection lifecycle: connected, disconnected or error. Omitting it RESETS the account to connected.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SocialAccountWrite &&
    other.handle == handle &&
    other.provider == provider &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (handle == null ? 0 : handle!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'SocialAccountWrite[handle=$handle, provider=$provider, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [SocialAccountWrite] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SocialAccountWrite? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SocialAccountWrite[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SocialAccountWrite[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SocialAccountWrite(
        handle: mapValueOfType<String>(json, r'handle'),
        provider: mapValueOfType<String>(json, r'provider'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<SocialAccountWrite> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SocialAccountWrite>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SocialAccountWrite.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SocialAccountWrite> mapFromJson(dynamic json) {
    final map = <String, SocialAccountWrite>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SocialAccountWrite.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SocialAccountWrite-objects as value to a dart map
  static Map<String, List<SocialAccountWrite>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SocialAccountWrite>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SocialAccountWrite.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

