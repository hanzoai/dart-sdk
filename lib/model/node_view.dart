//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NodeView {
  /// Returns a new [NodeView] instance.
  NodeView({
    this.caps = const [],
    this.commands = const [],
    this.connectedAt,
    this.displayName,
    this.id,
    this.platform,
    this.version,
  });

  /// Caps is the capability list the node reported. It is a self-report, useful to SHOW and never load-bearing: what a node may actually be asked to do is decided at the socket by the deployment's allowlist.
  List<String> caps;

  /// Commands is the command list the node reported. Same standing as Caps: a self-report, checked again at the socket before anything runs.
  List<String> commands;

  /// ConnectedAt is when this node's socket was established, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connectedAt;

  /// DisplayName is the human name the node reported for itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  /// ID is the node's own identifier within the org — the value POST /v1/bot/nodes/{id}/invoke addresses it by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Platform is the operating system and architecture the node reported.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? platform;

  /// Version is the node agent's own version string.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NodeView &&
    _deepEquality.equals(other.caps, caps) &&
    _deepEquality.equals(other.commands, commands) &&
    other.connectedAt == connectedAt &&
    other.displayName == displayName &&
    other.id == id &&
    other.platform == platform &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (caps.hashCode) +
    (commands.hashCode) +
    (connectedAt == null ? 0 : connectedAt!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'NodeView[caps=$caps, commands=$commands, connectedAt=$connectedAt, displayName=$displayName, id=$id, platform=$platform, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'caps'] = this.caps;
      json[r'commands'] = this.commands;
    if (this.connectedAt != null) {
      json[r'connectedAt'] = this.connectedAt;
    } else {
      json[r'connectedAt'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [NodeView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NodeView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NodeView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NodeView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NodeView(
        caps: json[r'caps'] is Iterable
            ? (json[r'caps'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        commands: json[r'commands'] is Iterable
            ? (json[r'commands'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        connectedAt: mapValueOfType<String>(json, r'connectedAt'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        id: mapValueOfType<String>(json, r'id'),
        platform: mapValueOfType<String>(json, r'platform'),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<NodeView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NodeView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NodeView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NodeView> mapFromJson(dynamic json) {
    final map = <String, NodeView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NodeView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NodeView-objects as value to a dart map
  static Map<String, List<NodeView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NodeView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NodeView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

