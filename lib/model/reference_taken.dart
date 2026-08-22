//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReferenceTaken {
  /// Returns a new [ReferenceTaken] instance.
  ReferenceTaken({
    this.keys,
    this.refusal,
    this.resumed,
    this.source_,
    this.unchanged,
    this.version,
    this.wrote,
  });
  /// Keys is how many members it carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? keys;

  /// Refusal is why this publisher contributed nothing, if it did not. The set keeps its previous version of this source rather than shrinking.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? refusal;

  /// Resumed is true when this run continued a version a previous run left half-landed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? resumed;

  /// Source is the publisher.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Unchanged is true when the publisher's data was byte-for-byte the set we already held.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? unchanged;

  /// Version is the content digest that landed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? version;

  /// Wrote is how many rows this run actually wrote. Zero with Unchanged means the publisher served the same set again.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? wrote;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReferenceTaken &&
    other.keys == keys &&
    other.refusal == refusal &&
    other.resumed == resumed &&
    other.source_ == source_ &&
    other.unchanged == unchanged &&
    other.version == version &&
    other.wrote == wrote;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (keys == null ? 0 : keys!.hashCode) +
    (refusal == null ? 0 : refusal!.hashCode) +
    (resumed == null ? 0 : resumed!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (unchanged == null ? 0 : unchanged!.hashCode) +
    (version == null ? 0 : version!.hashCode) +
    (wrote == null ? 0 : wrote!.hashCode);

  @override
  String toString() => 'ReferenceTaken[keys=$keys, refusal=$refusal, resumed=$resumed, source_=$source_, unchanged=$unchanged, version=$version, wrote=$wrote]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.keys != null) {
      json[r'keys'] = this.keys;
    } else {
      json[r'keys'] = null;
    }
    if (this.refusal != null) {
      json[r'refusal'] = this.refusal;
    } else {
      json[r'refusal'] = null;
    }
    if (this.resumed != null) {
      json[r'resumed'] = this.resumed;
    } else {
      json[r'resumed'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.unchanged != null) {
      json[r'unchanged'] = this.unchanged;
    } else {
      json[r'unchanged'] = null;
    }
    if (this.version != null) {
      json[r'version'] = this.version;
    } else {
      json[r'version'] = null;
    }
    if (this.wrote != null) {
      json[r'wrote'] = this.wrote;
    } else {
      json[r'wrote'] = null;
    }
    return json;
  }

  /// Returns a new [ReferenceTaken] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReferenceTaken? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReferenceTaken[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReferenceTaken[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReferenceTaken(
        keys: mapValueOfType<int>(json, r'keys'),
        refusal: mapValueOfType<String>(json, r'refusal'),
        resumed: mapValueOfType<bool>(json, r'resumed'),
        source_: mapValueOfType<String>(json, r'source'),
        unchanged: mapValueOfType<bool>(json, r'unchanged'),
        version: mapValueOfType<String>(json, r'version'),
        wrote: mapValueOfType<int>(json, r'wrote'),
      );
    }
    return null;
  }

  static List<ReferenceTaken> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReferenceTaken>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReferenceTaken.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReferenceTaken> mapFromJson(dynamic json) {
    final map = <String, ReferenceTaken>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReferenceTaken.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReferenceTaken-objects as value to a dart map
  static Map<String, List<ReferenceTaken>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReferenceTaken>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReferenceTaken.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

