//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Host {
  /// Returns a new [Host] instance.
  Host({
    this.addr,
    this.error,
    this.host,
    this.plugins = const [],
    this.self,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? addr;

  /// Err is set when a peer could not be reached. Its plugins are then unknown, which is NOT the same as none, so the list stays empty and the drift below refuses to conclude anything from it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Host is the pod's stable id, and Addr where it was reached. Self is true for the host that answered the request.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? host;

  List<Status> plugins;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? self;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Host &&
    other.addr == addr &&
    other.error == error &&
    other.host == host &&
    _deepEquality.equals(other.plugins, plugins) &&
    other.self == self;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (addr == null ? 0 : addr!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (host == null ? 0 : host!.hashCode) +
    (plugins.hashCode) +
    (self == null ? 0 : self!.hashCode);

  @override
  String toString() => 'Host[addr=$addr, error=$error, host=$host, plugins=$plugins, self=$self]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.addr != null) {
      json[r'addr'] = this.addr;
    } else {
      json[r'addr'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.host != null) {
      json[r'host'] = this.host;
    } else {
      json[r'host'] = null;
    }
      json[r'plugins'] = this.plugins;
    if (this.self != null) {
      json[r'self'] = this.self;
    } else {
      json[r'self'] = null;
    }
    return json;
  }

  /// Returns a new [Host] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Host? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Host[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Host[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Host(
        addr: mapValueOfType<String>(json, r'addr'),
        error: mapValueOfType<String>(json, r'error'),
        host: mapValueOfType<String>(json, r'host'),
        plugins: Status.listFromJson(json[r'plugins']),
        self: mapValueOfType<bool>(json, r'self'),
      );
    }
    return null;
  }

  static List<Host> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Host>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Host.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Host> mapFromJson(dynamic json) {
    final map = <String, Host>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Host.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Host-objects as value to a dart map
  static Map<String, List<Host>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Host>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Host.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

