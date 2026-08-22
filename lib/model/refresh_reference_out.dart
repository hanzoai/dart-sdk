//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RefreshReferenceOut {
  /// Returns a new [RefreshReferenceOut] instance.
  RefreshReferenceOut({
    this.set_,
    this.stale,
    this.took = const [],
    this.version,
  });
  /// Set is the set refreshed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? set_;

  /// Stale is whether it is STILL past its freshness bound after the refresh, which is what a publisher that has stopped answering looks like.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stale;

  /// Took is what each publisher contributed.
  List<ReferenceTaken> took;

  /// Version is the set's new composed version.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RefreshReferenceOut &&
    other.set_ == set_ &&
    other.stale == stale &&
    _deepEquality.equals(other.took, took) &&
    other.version == version;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (set_ == null ? 0 : set_!.hashCode) +
    (stale == null ? 0 : stale!.hashCode) +
    (took.hashCode) +
    (version == null ? 0 : version!.hashCode);

  @override
  String toString() => 'RefreshReferenceOut[set_=$set_, stale=$stale, took=$took, version=$version]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.set_ != null) {
      json[r'set'] = this.set_;
    } else {
      json[r'set'] = null;
    }
    if (this.stale != null) {
      json[r'stale'] = this.stale;
    } else {
      json[r'stale'] = null;
    }
      json[r'took'] = this.took;
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    return json;
  }

  /// Returns a new [RefreshReferenceOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RefreshReferenceOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RefreshReferenceOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RefreshReferenceOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RefreshReferenceOut(
        set_: mapValueOfType<String>(json, r'set'),
        stale: mapValueOfType<bool>(json, r'stale'),
        took: ReferenceTaken.listFromJson(json[r'took']),
        version: mapValueOfType<String>(json, r'version'),
      );
    }
    return null;
  }

  static List<RefreshReferenceOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RefreshReferenceOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RefreshReferenceOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RefreshReferenceOut> mapFromJson(dynamic json) {
    final map = <String, RefreshReferenceOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RefreshReferenceOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RefreshReferenceOut-objects as value to a dart map
  static Map<String, List<RefreshReferenceOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RefreshReferenceOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RefreshReferenceOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

