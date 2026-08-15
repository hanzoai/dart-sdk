//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClaimKeyOut {
  /// Returns a new [ClaimKeyOut] instance.
  ClaimKeyOut({
    this.claimKey,
    this.targetId,
  });

  /// ClaimKey is the capability itself. It is returned ONCE and never again — only its SHA-256 hash is stored — so a daemon that loses it mints a new one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? claimKey;

  /// TargetID is the machine the key authenticates.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? targetId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimKeyOut &&
    other.claimKey == claimKey &&
    other.targetId == targetId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (claimKey == null ? 0 : claimKey!.hashCode) +
    (targetId == null ? 0 : targetId!.hashCode);

  @override
  String toString() => 'ClaimKeyOut[claimKey=$claimKey, targetId=$targetId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.claimKey != null) {
      json[r'claimKey'] = this.claimKey;
    } else {
      json[r'claimKey'] = null;
    }
    if (this.targetId != null) {
      json[r'targetId'] = this.targetId;
    } else {
      json[r'targetId'] = null;
    }
    return json;
  }

  /// Returns a new [ClaimKeyOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimKeyOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimKeyOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimKeyOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimKeyOut(
        claimKey: mapValueOfType<String>(json, r'claimKey'),
        targetId: mapValueOfType<String>(json, r'targetId'),
      );
    }
    return null;
  }

  static List<ClaimKeyOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimKeyOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimKeyOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimKeyOut> mapFromJson(dynamic json) {
    final map = <String, ClaimKeyOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimKeyOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimKeyOut-objects as value to a dart map
  static Map<String, List<ClaimKeyOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimKeyOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimKeyOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

