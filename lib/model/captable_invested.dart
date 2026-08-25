//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableInvested {
  /// Returns a new [CaptableInvested] instance.
  CaptableInvested({
    this.id,
    this.message,
    this.newShareId,
    this.success,
  });
  /// ID is the investment record's id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Message is the human sentence the cap table wrote.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// NewShareID names the certificate the investment issued, when the round carries a price per share. Null when the round prices later, which is a recorded investment and not a failure.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? newShareId;

  /// Success is true when the investment was recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableInvested &&
    other.id == id &&
    other.message == message &&
    other.newShareId == newShareId &&
    other.success == success;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (id == null ? 0 : id!.hashCode) +
    (message == null ? 0 : message!.hashCode) +
    (newShareId == null ? 0 : newShareId!.hashCode) +
    (success == null ? 0 : success!.hashCode);

  @override
  String toString() => 'CaptableInvested[id=$id, message=$message, newShareId=$newShareId, success=$success]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.message != null) {
      json[r'message'] = this.message;
    } else {
      json[r'message'] = null;
    }
    if (this.newShareId != null) {
      json[r'newShareId'] = this.newShareId;
    } else {
      json[r'newShareId'] = null;
    }
    if (this.success != null) {
      json[r'success'] = this.success;
    } else {
      json[r'success'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableInvested] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableInvested? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableInvested[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableInvested[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableInvested(
        id: mapValueOfType<String>(json, r'id'),
        message: mapValueOfType<String>(json, r'message'),
        newShareId: mapValueOfType<String>(json, r'newShareId'),
        success: mapValueOfType<bool>(json, r'success'),
      );
    }
    return null;
  }

  static List<CaptableInvested> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableInvested>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableInvested.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableInvested> mapFromJson(dynamic json) {
    final map = <String, CaptableInvested>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableInvested.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableInvested-objects as value to a dart map
  static Map<String, List<CaptableInvested>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableInvested>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableInvested.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

