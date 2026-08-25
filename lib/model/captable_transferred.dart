//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableTransferred {
  /// Returns a new [CaptableTransferred] instance.
  CaptableTransferred({
    this.message,
    this.newShareId,
    this.success,
    this.transferred,
  });
  /// Message is the human sentence the cap table wrote, e.g. \"Share transferred\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? message;

  /// NewShareID names the certificate a PARTIAL transfer created. It is null on a full transfer, which reassigns the existing certificate instead of splitting it — so null here means \"no new certificate\", never \"the transfer failed\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? newShareId;

  /// Success is true when the transfer was applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? success;

  /// Transferred is how many shares moved.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? transferred;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableTransferred &&
    other.message == message &&
    other.newShareId == newShareId &&
    other.success == success &&
    other.transferred == transferred;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (message == null ? 0 : message!.hashCode) +
    (newShareId == null ? 0 : newShareId!.hashCode) +
    (success == null ? 0 : success!.hashCode) +
    (transferred == null ? 0 : transferred!.hashCode);

  @override
  String toString() => 'CaptableTransferred[message=$message, newShareId=$newShareId, success=$success, transferred=$transferred]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
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
    if (this.transferred != null) {
      json[r'transferred'] = this.transferred;
    } else {
      json[r'transferred'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableTransferred] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableTransferred? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableTransferred[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableTransferred[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableTransferred(
        message: mapValueOfType<String>(json, r'message'),
        newShareId: mapValueOfType<String>(json, r'newShareId'),
        success: mapValueOfType<bool>(json, r'success'),
        transferred: mapValueOfType<int>(json, r'transferred'),
      );
    }
    return null;
  }

  static List<CaptableTransferred> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableTransferred>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableTransferred.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableTransferred> mapFromJson(dynamic json) {
    final map = <String, CaptableTransferred>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableTransferred.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableTransferred-objects as value to a dart map
  static Map<String, List<CaptableTransferred>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableTransferred>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableTransferred.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

