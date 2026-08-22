//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ErrorBody {
  /// Returns a new [ErrorBody] instance.
  ErrorBody({
    this.frames = const [],
    this.handled,
    this.message,
    this.stack,
    this.type,
  });
  List<Frame> frames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? handled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stack;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ErrorBody &&
    _deepEquality.equals(other.frames, frames) &&
    other.handled == handled &&
    other.message == message &&
    other.stack == stack &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (frames.hashCode) +
    (handled == null ? 0 : handled!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (stack == null ? 0 : stack!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'ErrorBody[frames=$frames, handled=$handled, message=$message, stack=$stack, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'frames'] = this.frames;
    if (this.handled != null) {
      json[r'handled'] = this.handled;
    } else {
      json[r'handled'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.stack != null) {
      json[r'stack'] = this.stack;
    } else {
      json[r'stack'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [ErrorBody] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ErrorBody? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ErrorBody[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ErrorBody[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ErrorBody(
        frames: Frame.listFromJson(json[r'frames']),
        handled: mapValueOfType<bool>(json, r'handled'),
        message: mapValueOfType<String>(json, r'message'),
        stack: mapValueOfType<String>(json, r'stack'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<ErrorBody> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ErrorBody>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ErrorBody.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ErrorBody> mapFromJson(dynamic json) {
    final map = <String, ErrorBody>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ErrorBody.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ErrorBody-objects as value to a dart map
  static Map<String, List<ErrorBody>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ErrorBody>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ErrorBody.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

