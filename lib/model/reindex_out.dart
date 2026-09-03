//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReindexOut {
  /// Returns a new [ReindexOut] instance.
  ReindexOut({
    this.failed,
    this.lexical,
    this.removed,
    this.vectors,
  });
  /// Failed is how many documents could not be embedded; each is logged with its name, and the rest of the rebuild went on without it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? failed;

  /// Lexical is how many rows the org's lexical index holds now; 0 in a deployment without the index app.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? lexical;

  /// Removed is how many rows the lexical index held for documents that no longer exist; 0 without the index app.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? removed;

  /// Vectors is how many documents were embedded and written to the org's collection, which was dropped and created again at the configured size.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? vectors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReindexOut &&
    other.failed == failed &&
    other.lexical == lexical &&
    other.removed == removed &&
    other.vectors == vectors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (failed == null ? 0 : failed!.hashCode) +
    (lexical == null ? 0 : lexical!.hashCode) +
    (removed == null ? 0 : removed!.hashCode) +
    (vectors == null ? 0 : vectors!.hashCode);

  @override
  String toString() => 'ReindexOut[failed=$failed, lexical=$lexical, removed=$removed, vectors=$vectors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.failed != null) {
      json[r'failed'] = this.failed;
    } else {
      json[r'failed'] = null;
    }
    if (this.lexical != null) {
      json[r'lexical'] = this.lexical;
    } else {
      json[r'lexical'] = null;
    }
    if (this.removed != null) {
      json[r'removed'] = this.removed;
    } else {
      json[r'removed'] = null;
    }
    if (this.vectors != null) {
      json[r'vectors'] = this.vectors;
    } else {
      json[r'vectors'] = null;
    }
    return json;
  }

  /// Returns a new [ReindexOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReindexOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReindexOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReindexOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReindexOut(
        failed: mapValueOfType<int>(json, r'failed'),
        lexical: mapValueOfType<int>(json, r'lexical'),
        removed: mapValueOfType<int>(json, r'removed'),
        vectors: mapValueOfType<int>(json, r'vectors'),
      );
    }
    return null;
  }

  static List<ReindexOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReindexOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReindexOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReindexOut> mapFromJson(dynamic json) {
    final map = <String, ReindexOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReindexOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReindexOut-objects as value to a dart map
  static Map<String, List<ReindexOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReindexOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReindexOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

