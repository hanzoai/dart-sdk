//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceOut {
  /// Returns a new [ReferenceOut] instance.
  ReferenceOut({
    this.next,
    this.overrides = const [],
    this.set_,
  });
  /// Next is the key to page from, empty when this is the last page.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? next;

  /// Overrides is YOUR org's entries over that baseline, in key order. They are held in your organisation's own store and are not visible to any other.
  List<ReferenceOverride> overrides;

  /// Set is the published set: its version, its freshness and its sources.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  ReferenceSet? set_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceOut &&
    other.next == next &&
    _deepEquality.equals(other.overrides, overrides) &&
    other.set_ == set_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (next == null ? 0 : next!.hashCode) +
    (overrides.hashCode) +
    (set_ == null ? 0 : set_!.hashCode);

  @override
  String toString() => 'ReferenceOut[next=$next, overrides=$overrides, set_=$set_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.next != null) {
      json[r'next'] = this.next;
    } else {
      json[r'next'] = null;
    }
      json[r'overrides'] = this.overrides;
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceOut(
        next: mapValueOfType<String>(json, r'next'),
        overrides: ReferenceOverride.listFromJson(json[r'overrides']),
        set_: ReferenceSet.fromJson(json[r'set']),
      );
    }
    return null;
  }

  static List<ReferenceOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceOut> mapFromJson(dynamic json) {
    final map = <String, ReferenceOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceOut-objects as value to a dart map
  static Map<String, List<ReferenceOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

