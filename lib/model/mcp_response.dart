//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPResponse {
  /// Returns a new [MCPResponse] instance.
  MCPResponse({
    this.error,
    this.id,
    this.jsonrpc,
    this.result = const {},
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MCPError? error;

  Object? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jsonrpc;

  Map<String, Object> result;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPResponse &&
    other.error == error &&
    other.id == id &&
    other.jsonrpc == jsonrpc &&
    _deepEquality.equals(other.result, result);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (error == null ? 0 : error!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (jsonrpc == null ? 0 : jsonrpc!.hashCode) +
    (result.hashCode);

  @override
  String toString() => 'MCPResponse[error=$error, id=$id, jsonrpc=$jsonrpc, result=$result]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.jsonrpc != null) {
      json[r'jsonrpc'] = this.jsonrpc;
    } else {
      json[r'jsonrpc'] = null;
    }
      json[r'result'] = this.result;
    return json;
  }

  /// Returns a new [MCPResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPResponse(
        error: MCPError.fromJson(json[r'error']),
        id: mapValueOfType<Object>(json, r'id'),
        jsonrpc: mapValueOfType<String>(json, r'jsonrpc'),
        result: mapCastOfType<String, Object>(json, r'result') ?? const {},
      );
    }
    return null;
  }

  static List<MCPResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPResponse> mapFromJson(dynamic json) {
    final map = <String, MCPResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPResponse-objects as value to a dart map
  static Map<String, List<MCPResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

