//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ChannelResult {
  /// Returns a new [ChannelResult] instance.
  ChannelResult({
    this.channel,
    this.error,
    this.externalId,
    this.provider,
    this.status,
  });

  /// the social integration id targeted
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// short reason, when it failed
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// social post id, when it went out
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// \"x\" | \"instagram\" | ... when known
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// \"distributed\" | \"scheduled\" | \"failed\"
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ChannelResult &&
    other.channel == channel &&
    other.error == error &&
    other.externalId == externalId &&
    other.provider == provider &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (channel == null ? 0 : channel!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ChannelResult[channel=$channel, error=$error, externalId=$externalId, provider=$provider, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
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

  /// Returns a new [ChannelResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ChannelResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ChannelResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ChannelResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ChannelResult(
        channel: mapValueOfType<String>(json, r'channel'),
        error: mapValueOfType<String>(json, r'error'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        provider: mapValueOfType<String>(json, r'provider'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ChannelResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ChannelResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ChannelResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ChannelResult> mapFromJson(dynamic json) {
    final map = <String, ChannelResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ChannelResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ChannelResult-objects as value to a dart map
  static Map<String, List<ChannelResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ChannelResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ChannelResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

