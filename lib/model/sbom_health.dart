//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SbomHealth {
  /// Returns a new [SbomHealth] instance.
  SbomHealth({
    this.datastore,
    this.service,
    this.status,
    this.table,
  });

  /// Datastore reports whether the shared datastore connection this subsystem reads and writes through is established. False means the data endpoints answer 503.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? datastore;

  /// Service names the subsystem answering: always \"sbom\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? service;

  /// Status is the liveness verdict: always \"ok\" here, because the process answering at all IS the liveness fact.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Table is the fully-qualified datastore table the components live in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? table;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SbomHealth &&
    other.datastore == datastore &&
    other.service == service &&
    other.status == status &&
    other.table == table;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (datastore == null ? 0 : datastore!.hashCode) +
    (service == null ? 0 : service!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (table == null ? 0 : table!.hashCode);

  @override
  String toString() => 'SbomHealth[datastore=$datastore, service=$service, status=$status, table=$table]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.datastore != null) {
      json[r'datastore'] = this.datastore;
    } else {
      json[r'datastore'] = null;
    }
    if (this.service != null) {
      json[r'service'] = this.service;
    } else {
      json[r'service'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.table != null) {
      json[r'table'] = this.table;
    } else {
      json[r'table'] = null;
    }
    return json;
  }

  /// Returns a new [SbomHealth] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SbomHealth? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SbomHealth[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SbomHealth[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SbomHealth(
        datastore: mapValueOfType<bool>(json, r'datastore'),
        service: mapValueOfType<String>(json, r'service'),
        status: mapValueOfType<String>(json, r'status'),
        table: mapValueOfType<String>(json, r'table'),
      );
    }
    return null;
  }

  static List<SbomHealth> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SbomHealth>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SbomHealth.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SbomHealth> mapFromJson(dynamic json) {
    final map = <String, SbomHealth>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SbomHealth.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SbomHealth-objects as value to a dart map
  static Map<String, List<SbomHealth>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SbomHealth>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SbomHealth.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

