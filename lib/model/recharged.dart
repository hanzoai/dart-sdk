//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Recharged {
  /// Returns a new [Recharged] instance.
  Recharged({
    this.amountCents,
    this.balanceCents,
    this.charged,
    this.error,
    this.orgName,
    this.transactionId,
    this.userId,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? balanceCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? charged;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? orgName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? transactionId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? userId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Recharged &&
    other.amountCents == amountCents &&
    other.balanceCents == balanceCents &&
    other.charged == charged &&
    other.error == error &&
    other.orgName == orgName &&
    other.transactionId == transactionId &&
    other.userId == userId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (balanceCents == null ? 0 : balanceCents!.hashCode) +
    (charged == null ? 0 : charged!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (orgName == null ? 0 : orgName!.hashCode) +
    (transactionId == null ? 0 : transactionId!.hashCode) +
    (userId == null ? 0 : userId!.hashCode);

  @override
  String toString() => 'Recharged[amountCents=$amountCents, balanceCents=$balanceCents, charged=$charged, error=$error, orgName=$orgName, transactionId=$transactionId, userId=$userId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.balanceCents != null) {
      json[r'balanceCents'] = this.balanceCents;
    } else {
      json[r'balanceCents'] = null;
    }
    if (this.charged != null) {
      json[r'charged'] = this.charged;
    } else {
      json[r'charged'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.orgName != null) {
      json[r'orgName'] = this.orgName;
    } else {
      json[r'orgName'] = null;
    }
    if (this.transactionId != null) {
      json[r'transactionId'] = this.transactionId;
    } else {
      json[r'transactionId'] = null;
    }
    if (this.userId != null) {
      json[r'userId'] = this.userId;
    } else {
      json[r'userId'] = null;
    }
    return json;
  }

  /// Returns a new [Recharged] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Recharged? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Recharged[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Recharged[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Recharged(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        balanceCents: mapValueOfType<int>(json, r'balanceCents'),
        charged: mapValueOfType<bool>(json, r'charged'),
        error: mapValueOfType<String>(json, r'error'),
        orgName: mapValueOfType<String>(json, r'orgName'),
        transactionId: mapValueOfType<String>(json, r'transactionId'),
        userId: mapValueOfType<String>(json, r'userId'),
      );
    }
    return null;
  }

  static List<Recharged> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Recharged>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Recharged.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Recharged> mapFromJson(dynamic json) {
    final map = <String, Recharged>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Recharged.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Recharged-objects as value to a dart map
  static Map<String, List<Recharged>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Recharged>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Recharged.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

