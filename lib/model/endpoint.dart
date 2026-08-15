//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Endpoint {
  /// Returns a new [Endpoint] instance.
  Endpoint({
    this.created,
    this.deliveries7d,
    this.description,
    this.events = const [],
    this.failures7d,
    this.id,
    this.org,
    this.secret,
    this.status,
    this.updated,
    this.url,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

  /// Deliveries7d / Failures7d are cheap usage counters computed from the delivery log over usageWindow (not stored columns) and populated ONLY on list/get. They are 0 when there is no delivery history — never omitempty, so the console always sees them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? deliveries7d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  List<String> events;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failures7d;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? secret;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? updated;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? url;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Endpoint &&
    other.created == created &&
    other.deliveries7d == deliveries7d &&
    other.description == description &&
    _deepEquality.equals(other.events, events) &&
    other.failures7d == failures7d &&
    other.id == id &&
    other.org == org &&
    other.secret == secret &&
    other.status == status &&
    other.updated == updated &&
    other.url == url;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (deliveries7d == null ? 0 : deliveries7d!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (events.hashCode) +
    (failures7d == null ? 0 : failures7d!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (secret == null ? 0 : secret!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (updated == null ? 0 : updated!.hashCode) +
    (url == null ? 0 : url!.hashCode);

  @override
  String toString() => 'Endpoint[created=$created, deliveries7d=$deliveries7d, description=$description, events=$events, failures7d=$failures7d, id=$id, org=$org, secret=$secret, status=$status, updated=$updated, url=$url]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.deliveries7d != null) {
      json[r'deliveries7d'] = this.deliveries7d;
    } else {
      json[r'deliveries7d'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
      json[r'events'] = this.events;
    if (this.failures7d != null) {
      json[r'failures7d'] = this.failures7d;
    } else {
      json[r'failures7d'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.secret != null) {
      json[r'secret'] = this.secret;
    } else {
      json[r'secret'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.updated != null) {
      json[r'updated'] = this.updated;
    } else {
      json[r'updated'] = null;
    }
    if (this.url != null) {
      json[r'url'] = this.url;
    } else {
      json[r'url'] = null;
    }
    return json;
  }

  /// Returns a new [Endpoint] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Endpoint? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Endpoint[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Endpoint[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Endpoint(
        created: mapValueOfType<String>(json, r'created'),
        deliveries7d: mapValueOfType<int>(json, r'deliveries7d'),
        description: mapValueOfType<String>(json, r'description'),
        events: json[r'events'] is Iterable
            ? (json[r'events'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        failures7d: mapValueOfType<int>(json, r'failures7d'),
        id: mapValueOfType<String>(json, r'id'),
        org: mapValueOfType<String>(json, r'org'),
        secret: mapValueOfType<String>(json, r'secret'),
        status: mapValueOfType<String>(json, r'status'),
        updated: mapValueOfType<String>(json, r'updated'),
        url: mapValueOfType<String>(json, r'url'),
      );
    }
    return null;
  }

  static List<Endpoint> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Endpoint>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Endpoint.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Endpoint> mapFromJson(dynamic json) {
    final map = <String, Endpoint>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Endpoint.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Endpoint-objects as value to a dart map
  static Map<String, List<Endpoint>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Endpoint>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Endpoint.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

