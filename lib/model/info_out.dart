//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InfoOut {
  /// Returns a new [InfoOut] instance.
  InfoOut({
    this.jetstream,
    this.maxPayload,
    this.serverId,
    this.serverName,
    this.streams,
    this.version,
  });

  /// JetStream is true when durable streams are enabled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? jetstream;

  /// MaxPayload is the broker's message-size ceiling in bytes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? maxPayload;

  /// Server is the broker's server id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverId;

  /// Name is the broker's server name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? serverName;

  /// Streams is the org's stream count.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? streams;

  /// Version is the broker's server version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InfoOut &&
    other.jetstream == jetstream &&
    other.maxPayload == maxPayload &&
    other.serverId == serverId &&
    other.serverName == serverName &&
    other.streams == streams &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (jetstream == null ? 0 : jetstream!.hashCode) +
    (maxPayload == null ? 0 : maxPayload!.hashCode) +
    (serverId == null ? 0 : serverId!.hashCode) +
    (serverName == null ? 0 : serverName!.hashCode) +
    (streams == null ? 0 : streams!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'InfoOut[jetstream=$jetstream, maxPayload=$maxPayload, serverId=$serverId, serverName=$serverName, streams=$streams, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.jetstream != null) {
      json[r'jetstream'] = this.jetstream;
    } else {
      json[r'jetstream'] = null;
    }
    if (this.maxPayload != null) {
      json[r'max_payload'] = this.maxPayload;
    } else {
      json[r'max_payload'] = null;
    }
    if (this.serverId != null) {
      json[r'server_id'] = this.serverId;
    } else {
      json[r'server_id'] = null;
    }
    if (this.serverName != null) {
      json[r'server_name'] = this.serverName;
    } else {
      json[r'server_name'] = null;
    }
    if (this.streams != null) {
      json[r'streams'] = this.streams;
    } else {
      json[r'streams'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [InfoOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InfoOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InfoOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InfoOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InfoOut(
        jetstream: mapValueOfType<bool>(json, r'jetstream'),
        maxPayload: mapValueOfType<int>(json, r'max_payload'),
        serverId: mapValueOfType<String>(json, r'server_id'),
        serverName: mapValueOfType<String>(json, r'server_name'),
        streams: mapValueOfType<int>(json, r'streams'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<InfoOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InfoOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InfoOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InfoOut> mapFromJson(dynamic json) {
    final map = <String, InfoOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InfoOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InfoOut-objects as value to a dart map
  static Map<String, List<InfoOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InfoOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InfoOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

