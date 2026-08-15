//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Upstream {
  /// Returns a new [Upstream] instance.
  Upstream({
    this.backends = const [],
    this.id,
    this.passHostHeader,
  });

  /// Backends are the upstream servers to balance across: 1..32 of them.
  List<Backend> backends;

  /// ID identifies the pool within the org: [A-Za-z0-9-_.], at most 128 chars. A create that omits it gets a generated one. Routes reference it by this id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// PassHostHeader forwards the client's original Host header upstream instead of rewriting it to the backend's.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? passHostHeader;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Upstream &&
    _deepEquality.equals(other.backends, backends) &&
    other.id == id &&
    other.passHostHeader == passHostHeader;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (backends.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (passHostHeader == null ? 0 : passHostHeader!.hashCode);

  @override
  String toString() => 'Upstream[backends=$backends, id=$id, passHostHeader=$passHostHeader]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'backends'] = this.backends;
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.passHostHeader != null) {
      json[r'passHostHeader'] = this.passHostHeader;
    } else {
      json[r'passHostHeader'] = null;
    }
    return json;
  }

  /// Returns a new [Upstream] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Upstream? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Upstream[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Upstream[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Upstream(
        backends: Backend.listFromJson(json[r'backends']),
        id: mapValueOfType<String>(json, r'id'),
        passHostHeader: mapValueOfType<bool>(json, r'passHostHeader'),
      );
    }
    return null;
  }

  static List<Upstream> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Upstream>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Upstream.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Upstream> mapFromJson(dynamic json) {
    final map = <String, Upstream>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Upstream.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Upstream-objects as value to a dart map
  static Map<String, List<Upstream>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Upstream>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Upstream.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

