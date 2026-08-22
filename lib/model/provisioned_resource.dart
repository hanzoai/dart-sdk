//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ProvisionedResource {
  /// Returns a new [ProvisionedResource] instance.
  ProvisionedResource({
    this.database,
    this.host,
    this.id,
    this.kind,
    this.name,
    this.port,
    this.status,
    this.username,
  });
  /// Database is the logical database, collection, index or bucket this resource resolves to on its backend.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? database;

  /// Host is the address that actually routes to this resource — a dedicated instance's own in-cluster Service, or the public gateway for a shared one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  /// ID is the resource's server-minted handle, \"rs_\"-prefixed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is the product: sql, vector, datastore, kv, search, s3 or docdb.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name is the org-unique slug the caller provisioned the resource under.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Port is the port a client connects to on Host.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? port;

  /// Status is \"ready\", or \"provisioning\" while a dedicated instance is still being materialized. A dedicated resource's status is reconciled from the operator's live CR before this is answered, so it is never a stale ready.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Username is the credential's user, for the kinds that mint one per resource. Absent for a kind whose backend authenticates with a shared, out-of-band key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? username;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ProvisionedResource &&
    other.database == database &&
    other.host == host &&
    other.id == id &&
    other.kind == kind &&
    other.name == name &&
    other.port == port &&
    other.status == status &&
    other.username == username;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (database == null ? 0 : database!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (port == null ? 0 : port!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (username == null ? 0 : username!.hashCode);

  @override
  String toString() => 'ProvisionedResource[database=$database, host=$host, id=$id, kind=$kind, name=$name, port=$port, status=$status, username=$username]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.database != null) {
      json[r'database'] = this.database;
    } else {
      json[r'database'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.port != null) {
      json[r'port'] = this.port;
    } else {
      json[r'port'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.username != null) {
      json[r'username'] = this.username;
    } else {
      json[r'username'] = null;
    }
    return json;
  }

  /// Returns a new [ProvisionedResource] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ProvisionedResource? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ProvisionedResource[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ProvisionedResource[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ProvisionedResource(
        database: mapValueOfType<String>(json, r'database'),
        host: mapValueOfType<String>(json, r'host'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        port: mapValueOfType<int>(json, r'port'),
        status: mapValueOfType<String>(json, r'status'),
        username: mapValueOfType<String>(json, r'username'),
      );
    }
    return null;
  }

  static List<ProvisionedResource> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ProvisionedResource>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ProvisionedResource.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ProvisionedResource> mapFromJson(dynamic json) {
    final map = <String, ProvisionedResource>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ProvisionedResource.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ProvisionedResource-objects as value to a dart map
  static Map<String, List<ProvisionedResource>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ProvisionedResource>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ProvisionedResource.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

