//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MyReferralView {
  /// Returns a new [MyReferralView] instance.
  MyReferralView({
    this.createdAt,
    this.id,
    this.qualifiedAt,
    this.referee,
    this.status,
  });
  /// CreatedAt is when the referral was recorded, as a Unix timestamp.
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

  /// QualifiedAt is when the referee first made metered spend, as a Unix timestamp; 0 while the referral is still pending.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? qualifiedAt;

  /// Referee is the org that signed up with my code.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? referee;

  /// Status is the referral's lifecycle state: \"signup\" until the referee makes metered spend, then \"qualified\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MyReferralView &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.qualifiedAt == qualifiedAt &&
    other.referee == referee &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (qualifiedAt == null ? 0 : qualifiedAt!.hashCode) +
    (referee == null ? 0 : referee!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'MyReferralView[createdAt=$createdAt, id=$id, qualifiedAt=$qualifiedAt, referee=$referee, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.qualifiedAt != null) {
      json[r'qualifiedAt'] = this.qualifiedAt;
    } else {
      json[r'qualifiedAt'] = null;
    }
    if (this.referee != null) {
      json[r'referee'] = this.referee;
    } else {
      json[r'referee'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [MyReferralView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MyReferralView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MyReferralView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MyReferralView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MyReferralView(
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        qualifiedAt: mapValueOfType<int>(json, r'qualifiedAt'),
        referee: mapValueOfType<String>(json, r'referee'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<MyReferralView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MyReferralView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MyReferralView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MyReferralView> mapFromJson(dynamic json) {
    final map = <String, MyReferralView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MyReferralView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MyReferralView-objects as value to a dart map
  static Map<String, List<MyReferralView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MyReferralView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MyReferralView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

