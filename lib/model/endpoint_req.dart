//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EndpointReq {
  /// Returns a new [EndpointReq] instance.
  EndpointReq({
    this.connector,
    this.locator,
    this.provider,
  });
  /// Connector names the stored credential to reach this endpoint with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connector;

  /// Locator addresses the resource. For a git source it is the https clone URL on the provider's own host, with no embedded credentials; for a native target it is the repository name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locator;

  /// Provider is the platform: github or gitlab for a source; a target defaults to the native Hanzo Git plane.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EndpointReq &&
    other.connector == connector &&
    other.locator == locator &&
    other.provider == provider;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connector == null ? 0 : connector!.hashCode) +
    (locator == null ? 0 : locator!.hashCode) +
    (provider == null ? 0 : provider!.hashCode);

  @override
  String toString() => 'EndpointReq[connector=$connector, locator=$locator, provider=$provider]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connector != null) {
      json[r'connector'] = this.connector;
    } else {
      json[r'connector'] = null;
    }
    if (this.locator != null) {
      json[r'locator'] = this.locator;
    } else {
      json[r'locator'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    return json;
  }

  /// Returns a new [EndpointReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EndpointReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EndpointReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EndpointReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EndpointReq(
        connector: mapValueOfType<String>(json, r'connector'),
        locator: mapValueOfType<String>(json, r'locator'),
        provider: mapValueOfType<String>(json, r'provider'),
      );
    }
    return null;
  }

  static List<EndpointReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EndpointReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EndpointReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EndpointReq> mapFromJson(dynamic json) {
    final map = <String, EndpointReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EndpointReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EndpointReq-objects as value to a dart map
  static Map<String, List<EndpointReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EndpointReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EndpointReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

