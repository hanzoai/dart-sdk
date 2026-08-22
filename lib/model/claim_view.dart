//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ClaimView {
  /// Returns a new [ClaimView] instance.
  ClaimView({
    this.code,
    this.created,
    this.createdAt,
    this.id,
    this.status,
  });
  /// Code is the referral code the referral was recorded against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Created is true when this call recorded the referral and false when it found one already recorded for this referee — the idempotent replay.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// CreatedAt is when the referral was first recorded, as a Unix timestamp.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// ID is the referral's handle.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Status is the referral's lifecycle state: \"signup\" until the referee makes metered spend, then \"qualified\", then \"credited\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ClaimView &&
    other.code == code &&
    other.created == created &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ClaimView[code=$code, created=$created, createdAt=$createdAt, id=$id, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ClaimView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ClaimView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ClaimView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ClaimView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ClaimView(
        code: mapValueOfType<String>(json, r'code'),
        created: mapValueOfType<bool>(json, r'created'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ClaimView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ClaimView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ClaimView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ClaimView> mapFromJson(dynamic json) {
    final map = <String, ClaimView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ClaimView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ClaimView-objects as value to a dart map
  static Map<String, List<ClaimView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ClaimView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ClaimView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

