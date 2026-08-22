//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EnrollInput {
  /// Returns a new [EnrollInput] instance.
  EnrollInput({
    this.address,
    this.audienceId,
    this.channel,
    this.id,
  });
  /// Address is a single recipient, normalized (lower-cased, trimmed) before use. Give this OR audienceId, never both and never neither.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// AudienceID fans the sequence out over a saved audience, resolved live to the org's mailable customers. Email only.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? audienceId;

  /// Channel is the delivery surface; empty means email. An audience resolves mailboxes, so an audience enroll must be email.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? channel;

  /// ID is the sequence id from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EnrollInput &&
    other.address == address &&
    other.audienceId == audienceId &&
    other.channel == channel &&
    other.id == id;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (audienceId == null ? 0 : audienceId!.hashCode) +
    (channel == null ? 0 : channel!.hashCode) +
    (id == null ? 0 : id!.hashCode);

  @override
  String toString() => 'EnrollInput[address=$address, audienceId=$audienceId, channel=$channel, id=$id]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.audienceId != null) {
      json[r'audienceId'] = this.audienceId;
    } else {
      json[r'audienceId'] = null;
    }
    if (this.channel != null) {
      json[r'channel'] = this.channel;
    } else {
      json[r'channel'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    return json;
  }

  /// Returns a new [EnrollInput] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EnrollInput? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EnrollInput[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EnrollInput[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EnrollInput(
        address: mapValueOfType<String>(json, r'address'),
        audienceId: mapValueOfType<String>(json, r'audienceId'),
        channel: mapValueOfType<String>(json, r'channel'),
        id: mapValueOfType<String>(json, r'id'),
      );
    }
    return null;
  }

  static List<EnrollInput> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EnrollInput>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EnrollInput.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EnrollInput> mapFromJson(dynamic json) {
    final map = <String, EnrollInput>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EnrollInput.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EnrollInput-objects as value to a dart map
  static Map<String, List<EnrollInput>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EnrollInput>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EnrollInput.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

