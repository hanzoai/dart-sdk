//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableInvestmentIn {
  /// Returns a new [CaptableInvestmentIn] instance.
  CaptableInvestmentIn({
    this.amount,
    this.comments,
    this.date,
    this.id,
    this.stakeholderId,
  });
  Object? amount;

  Object? comments;

  Object? date;

  /// ID is the round to invest in. The URL is the addressing authority — a path segment binds after the body and after the query — so the address decides which round is written whatever a body claims.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? stakeholderId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableInvestmentIn &&
    other.amount == amount &&
    other.comments == comments &&
    other.date == date &&
    other.id == id &&
    other.stakeholderId == stakeholderId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (comments == null ? 0 : comments!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (stakeholderId == null ? 0 : stakeholderId!.hashCode);

  @override
  String toString() => 'CaptableInvestmentIn[amount=$amount, comments=$comments, date=$date, id=$id, stakeholderId=$stakeholderId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.comments != null) {
      json[r'comments'] = this.comments;
    } else {
      json[r'comments'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.stakeholderId != null) {
      json[r'stakeholderId'] = this.stakeholderId;
    } else {
      json[r'stakeholderId'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableInvestmentIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableInvestmentIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableInvestmentIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableInvestmentIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableInvestmentIn(
        amount: mapValueOfType<Object>(json, r'amount'),
        comments: mapValueOfType<Object>(json, r'comments'),
        date: mapValueOfType<Object>(json, r'date'),
        id: mapValueOfType<String>(json, r'id'),
        stakeholderId: mapValueOfType<Object>(json, r'stakeholderId'),
      );
    }
    return null;
  }

  static List<CaptableInvestmentIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableInvestmentIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableInvestmentIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableInvestmentIn> mapFromJson(dynamic json) {
    final map = <String, CaptableInvestmentIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableInvestmentIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableInvestmentIn-objects as value to a dart map
  static Map<String, List<CaptableInvestmentIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableInvestmentIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableInvestmentIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

