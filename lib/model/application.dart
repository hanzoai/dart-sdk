//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Application {
  /// Returns a new [Application] instance.
  Application({
    this.code,
    this.created,
    this.id,
    this.rateBps,
    this.requestedCode,
    this.status,
  });
  /// Code is the minted referral code. Empty on a first apply — applying does not mint a code, approval does; a re-apply echoes whatever the row already holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Created says whether THIS call made the row. false means the org had already applied and nothing changed — no second row, no reset of an existing approval. The HTTP status states the same fact: 201 when true, 200 when false.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? created;

  /// ID is the affiliate's server-minted handle, \"aff_\"-prefixed — the id staff approve, suspend, re-rate and pay against.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// RateBps is the direct (level 1) commission rate the row carries, in basis points OF Hanzo's margin (2000 = 20% of margin, never of the customer's bill).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rateBps;

  /// RequestedCode echoes the vanity code asked for, normalized to lower case. It is a request only: approval mints a different slug if this one is taken.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? requestedCode;

  /// Status is \"applied\" for a row this call created. A re-apply echoes the existing row's status, which may already be \"approved\" or \"suspended\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Application &&
    other.code == code &&
    other.created == created &&
    other.id == id &&
    other.rateBps == rateBps &&
    other.requestedCode == requestedCode &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (code == null ? 0 : code!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (rateBps == null ? 0 : rateBps!.hashCode) +
    (requestedCode == null ? 0 : requestedCode!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Application[code=$code, created=$created, id=$id, rateBps=$rateBps, requestedCode=$requestedCode, status=$status]';

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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.rateBps != null) {
      json[r'rateBps'] = this.rateBps;
    } else {
      json[r'rateBps'] = null;
    }
    if (this.requestedCode != null) {
      json[r'requestedCode'] = this.requestedCode;
    } else {
      json[r'requestedCode'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Application] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Application? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Application[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Application[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Application(
        code: mapValueOfType<String>(json, r'code'),
        created: mapValueOfType<bool>(json, r'created'),
        id: mapValueOfType<String>(json, r'id'),
        rateBps: mapValueOfType<int>(json, r'rateBps'),
        requestedCode: mapValueOfType<String>(json, r'requestedCode'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Application> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Application>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Application.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Application> mapFromJson(dynamic json) {
    final map = <String, Application>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Application.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Application-objects as value to a dart map
  static Map<String, List<Application>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Application>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Application.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

