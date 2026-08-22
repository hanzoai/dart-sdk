//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClickCount {
  /// Returns a new [ClickCount] instance.
  ClickCount({
    this.counted,
  });
  /// Counted says the in-memory buffer took the ping. It does NOT say the code exists — this is deliberately not a code-existence oracle, and an unknown code simply no-ops at flush time. false means the buffer was full and the ping was dropped, which is harmless: clicks are vanity and move no money.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? counted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClickCount &&
    other.counted == counted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (counted == null ? 0 : counted!.hashCode);

  @override
  String toString() => 'ClickCount[counted=$counted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.counted != null) {
      json[r'counted'] = this.counted;
    } else {
      json[r'counted'] = null;
    }
    return json;
  }

  /// Returns a new [ClickCount] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClickCount? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClickCount[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClickCount[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClickCount(
        counted: mapValueOfType<bool>(json, r'counted'),
      );
    }
    return null;
  }

  static List<ClickCount> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClickCount>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClickCount.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClickCount> mapFromJson(dynamic json) {
    final map = <String, ClickCount>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClickCount.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClickCount-objects as value to a dart map
  static Map<String, List<ClickCount>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClickCount>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClickCount.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

