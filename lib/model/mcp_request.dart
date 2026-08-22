//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MCPRequest {
  /// Returns a new [MCPRequest] instance.
  MCPRequest({
    this.id,
    this.jsonrpc,
    this.method,
    this.params = const {},
  });
  Object? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jsonrpc;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  Map<String, Object> params;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MCPRequest &&
    other.id == id &&
    other.jsonrpc == jsonrpc &&
    other.method == method &&
    _deepEquality.equals(other.params, params);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (jsonrpc == null ? 0 : jsonrpc!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (params.hashCode);

  @override
  String toString() => 'MCPRequest[id=$id, jsonrpc=$jsonrpc, method=$method, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
      json[r'params'] = this.params;
    return json;
  }

  /// Returns a new [MCPRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MCPRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MCPRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MCPRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MCPRequest(
        id: mapValueOfType<Object>(json, r'id'),
        jsonrpc: mapValueOfType<String>(json, r'jsonrpc'),
        method: mapValueOfType<String>(json, r'method'),
        params: mapCastOfType<String, Object>(json, r'params') ?? const {},
      );
    }
    return null;
  }

  static List<MCPRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MCPRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MCPRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MCPRequest> mapFromJson(dynamic json) {
    final map = <String, MCPRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MCPRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MCPRequest-objects as value to a dart map
  static Map<String, List<MCPRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MCPRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MCPRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

