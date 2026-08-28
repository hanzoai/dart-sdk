//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class OpenaiToolCall {
  /// Returns a new [OpenaiToolCall] instance.
  OpenaiToolCall({
    this.function_,
    this.id,
    this.index,
    this.type,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  OpenaiFunctionCall? function_;

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
  int? index;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is OpenaiToolCall &&
    other.function_ == function_ &&
    other.id == id &&
    other.index == index &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (function_ == null ? 0 : function_!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'OpenaiToolCall[function_=$function_, id=$id, index=$index, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.function_ != null) {
      json[r'function'] = this.function_;
    } else {
      json[r'function'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [OpenaiToolCall] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static OpenaiToolCall? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "OpenaiToolCall[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "OpenaiToolCall[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return OpenaiToolCall(
        function_: OpenaiFunctionCall.fromJson(json[r'function']),
        id: mapValueOfType<String>(json, r'id'),
        index: mapValueOfType<int>(json, r'index'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<OpenaiToolCall> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <OpenaiToolCall>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = OpenaiToolCall.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, OpenaiToolCall> mapFromJson(dynamic json) {
    final map = <String, OpenaiToolCall>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = OpenaiToolCall.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of OpenaiToolCall-objects as value to a dart map
  static Map<String, List<OpenaiToolCall>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<OpenaiToolCall>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = OpenaiToolCall.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

