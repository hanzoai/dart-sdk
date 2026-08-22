//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RpcError {
  /// Returns a new [RpcError] instance.
  RpcError({
    this.code,
    this.message,
  });
  /// Code is the JSON-RPC error code the chain reported, passed through as it came. -32603 (internal error) is the one value this deployment mints itself, for an upstream that could not be reached at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? code;

  /// Message is the chain's own explanation, e.g. \"execution reverted\". It is \"upstream unavailable\" when the deployment minted the error rather than the chain — that is the one message this side writes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RpcError &&
    other.code == code &&
    other.message == message;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (message == null ? 0 : message!.hashCode);

  @override
  String toString() => 'RpcError[code=$code, message=$message]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    return json;
  }

  /// Returns a new [RpcError] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RpcError? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RpcError[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RpcError[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RpcError(
        code: mapValueOfType<int>(json, r'code'),
        message: mapValueOfType<String>(json, r'message'),
      );
    }
    return null;
  }

  static List<RpcError> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RpcError>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RpcError.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RpcError> mapFromJson(dynamic json) {
    final map = <String, RpcError>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RpcError.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RpcError-objects as value to a dart map
  static Map<String, List<RpcError>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RpcError>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RpcError.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

