//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ArtifactOut {
  /// Returns a new [ArtifactOut] instance.
  ArtifactOut({
    this.created,
    this.ref,
    this.rolledUp,
    this.sha256,
  });

  /// Created is false when these exact bytes were already recorded — the write is a no-op.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// Ref is the content address, \"sha256:<hash>\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  /// RolledUp is false when the OLAP roll-up was skipped; the SQLite write still stands.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? rolledUp;

  /// SHA256 is the SERVER's hash of the bytes — the artifact's identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sha256;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ArtifactOut &&
    other.created == created &&
    other.ref == ref &&
    other.rolledUp == rolledUp &&
    other.sha256 == sha256;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (created == null ? 0 : created!.hashCode) +
    (ref == null ? 0 : ref!.hashCode) +
    (rolledUp == null ? 0 : rolledUp!.hashCode) +
    (sha256 == null ? 0 : sha256!.hashCode);

  @override
  String toString() => 'ArtifactOut[created=$created, ref=$ref, rolledUp=$rolledUp, sha256=$sha256]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    if (this.rolledUp != null) {
      json[r'rolled_up'] = this.rolledUp;
    } else {
      json[r'rolled_up'] = null;
    }
    if (this.sha256 != null) {
      json[r'sha256'] = this.sha256;
    } else {
      json[r'sha256'] = null;
    }
    return json;
  }

  /// Returns a new [ArtifactOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ArtifactOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ArtifactOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ArtifactOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ArtifactOut(
        created: mapValueOfType<bool>(json, r'created'),
        ref: mapValueOfType<String>(json, r'ref'),
        rolledUp: mapValueOfType<bool>(json, r'rolled_up'),
        sha256: mapValueOfType<String>(json, r'sha256'),
      );
    }
    return null;
  }

  static List<ArtifactOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ArtifactOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ArtifactOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ArtifactOut> mapFromJson(dynamic json) {
    final map = <String, ArtifactOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ArtifactOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ArtifactOut-objects as value to a dart map
  static Map<String, List<ArtifactOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ArtifactOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ArtifactOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

