//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RpcIn {
  /// Returns a new [RpcIn] instance.
  RpcIn({
    this.chain,
    this.id,
    this.jsonrpc,
    this.method,
    this.params,
  });

  /// Chain is the registry id, from the URL.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? chain;

  Object? id;

  /// JSONRPC must be \"2.0\" when present.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jsonrpc;

  /// Method is the RPC method, e.g. eth_getBalance.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? method;

  Object? params;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RpcIn &&
    other.chain == chain &&
    other.id == id &&
    other.jsonrpc == jsonrpc &&
    other.method == method &&
    other.params == params;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chain == null ? 0 : chain!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (jsonrpc == null ? 0 : jsonrpc!.hashCode) +
    (method == null ? 0 : method!.hashCode) +
    (params == null ? 0 : params!.hashCode);

  @override
  String toString() => 'RpcIn[chain=$chain, id=$id, jsonrpc=$jsonrpc, method=$method, params=$params]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chain != null) {
      json[r'chain'] = this.chain;
    } else {
      json[r'chain'] = null;
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
    if (this.method != null) {
      json[r'method'] = this.method;
    } else {
      json[r'method'] = null;
    }
    if (this.params != null) {
      json[r'params'] = this.params;
    } else {
      json[r'params'] = null;
    }
    return json;
  }

  /// Returns a new [RpcIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RpcIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RpcIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RpcIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RpcIn(
        chain: mapValueOfType<String>(json, r'chain'),
        id: mapValueOfType<Object>(json, r'id'),
        jsonrpc: mapValueOfType<String>(json, r'jsonrpc'),
        method: mapValueOfType<String>(json, r'method'),
        params: mapValueOfType<Object>(json, r'params'),
      );
    }
    return null;
  }

  static List<RpcIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RpcIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RpcIn> mapFromJson(dynamic json) {
    final map = <String, RpcIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RpcIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RpcIn-objects as value to a dart map
  static Map<String, List<RpcIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RpcIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RpcIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

