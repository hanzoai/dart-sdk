//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class HandleRequest {
  /// Returns a new [HandleRequest] instance.
  HandleRequest({
    this.handle,
  });

  /// Handle is the public leaderboard display name; empty opts out. Body-only: the URL cannot supply it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? handle;

  @override
  bool operator ==(Object other) => identical(this, other) || other is HandleRequest &&
    other.handle == handle;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (handle == null ? 0 : handle!.hashCode);

  @override
  String toString() => 'HandleRequest[handle=$handle]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.handle != null) {
      json[r'handle'] = this.handle;
    } else {
      json[r'handle'] = null;
    }
    return json;
  }

  /// Returns a new [HandleRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static HandleRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "HandleRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "HandleRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return HandleRequest(
        handle: mapValueOfType<String>(json, r'handle'),
      );
    }
    return null;
  }

  static List<HandleRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <HandleRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = HandleRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, HandleRequest> mapFromJson(dynamic json) {
    final map = <String, HandleRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = HandleRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of HandleRequest-objects as value to a dart map
  static Map<String, List<HandleRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<HandleRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = HandleRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

