//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClearReferenceOut {
  /// Returns a new [ClearReferenceOut] instance.
  ClearReferenceOut({
    this.cleared,
    this.key,
    this.overrides,
    this.set_,
  });
  /// Cleared is false when your org held no such override — which is not an error, it is the honest answer to a removal that had nothing to remove.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? cleared;

  /// Key is the entry named.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? key;

  /// Overrides is how many your org still holds in this set.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? overrides;

  /// Set is the set cleared in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? set_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClearReferenceOut &&
    other.cleared == cleared &&
    other.key == key &&
    other.overrides == overrides &&
    other.set_ == set_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cleared == null ? 0 : cleared!.hashCode) +
    (key == null ? 0 : key!.hashCode) +
    (overrides == null ? 0 : overrides!.hashCode) +
    (set_ == null ? 0 : set_!.hashCode);

  @override
  String toString() => 'ClearReferenceOut[cleared=$cleared, key=$key, overrides=$overrides, set_=$set_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.cleared != null) {
      json[r'cleared'] = this.cleared;
    } else {
      json[r'cleared'] = null;
    }
    if (this.key != null) {
      json[r'key'] = this.key;
    } else {
      json[r'key'] = null;
    }
    if (this.overrides != null) {
      json[r'overrides'] = this.overrides;
    } else {
      json[r'overrides'] = null;
    }
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
    return json;
  }

  /// Returns a new [ClearReferenceOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClearReferenceOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClearReferenceOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClearReferenceOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClearReferenceOut(
        cleared: mapValueOfType<bool>(json, r'cleared'),
        key: mapValueOfType<String>(json, r'key'),
        overrides: mapValueOfType<int>(json, r'overrides'),
        set_: mapValueOfType<String>(json, r'set'),
      );
    }
    return null;
  }

  static List<ClearReferenceOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClearReferenceOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClearReferenceOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClearReferenceOut> mapFromJson(dynamic json) {
    final map = <String, ClearReferenceOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClearReferenceOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClearReferenceOut-objects as value to a dart map
  static Map<String, List<ClearReferenceOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClearReferenceOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClearReferenceOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

