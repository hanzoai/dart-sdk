//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BrowserTagOut {
  /// Returns a new [BrowserTagOut] instance.
  BrowserTagOut({
    this.id,
    this.platform,
    this.type,
  });
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
  String? platform;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BrowserTagOut &&
    other.id == id &&
    other.platform == platform &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (platform == null ? 0 : platform!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'BrowserTagOut[id=$id, platform=$platform, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.platform != null) {
      json[r'platform'] = this.platform;
    } else {
      json[r'platform'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [BrowserTagOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BrowserTagOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BrowserTagOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BrowserTagOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BrowserTagOut(
        id: mapValueOfType<String>(json, r'id'),
        platform: mapValueOfType<String>(json, r'platform'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<BrowserTagOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BrowserTagOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BrowserTagOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BrowserTagOut> mapFromJson(dynamic json) {
    final map = <String, BrowserTagOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BrowserTagOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BrowserTagOut-objects as value to a dart map
  static Map<String, List<BrowserTagOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BrowserTagOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BrowserTagOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

