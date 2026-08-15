//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class NetworkView {
  /// Returns a new [NetworkView] instance.
  NetworkView({
    this.id,
    this.name,
    this.nodes,
    this.status,
  });

  /// ID is the org-derived id of the overlay network — the key GET /v1/networks/{id} addresses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Name is the org the overlay belongs to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Nodes is how many edge-routers the org has on the fabric.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nodes;

  /// Status is \"connected\" once at least one of the org's edge-routers is online, else \"provisioning\" (routers exist but none has dialed home).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is NetworkView &&
    other.id == id &&
    other.name == name &&
    other.nodes == nodes &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (nodes == null ? 0 : nodes!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'NetworkView[id=$id, name=$name, nodes=$nodes, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.nodes != null) {
      json[r'nodes'] = this.nodes;
    } else {
      json[r'nodes'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [NetworkView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static NetworkView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "NetworkView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "NetworkView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return NetworkView(
        id: mapValueOfType<String>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        nodes: mapValueOfType<int>(json, r'nodes'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<NetworkView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <NetworkView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = NetworkView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, NetworkView> mapFromJson(dynamic json) {
    final map = <String, NetworkView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = NetworkView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of NetworkView-objects as value to a dart map
  static Map<String, List<NetworkView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<NetworkView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = NetworkView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

