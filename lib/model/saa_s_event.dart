//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSEvent {
  /// Returns a new [SaaSEvent] instance.
  SaaSEvent({
    this.at,
    this.category,
    this.mrrDeltaCents,
    this.org,
    this.plan,
    this.type,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? mrrDeltaCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? plan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSEvent &&
    other.at == at &&
    other.category == category &&
    other.mrrDeltaCents == mrrDeltaCents &&
    other.org == org &&
    other.plan == plan &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (mrrDeltaCents == null ? 0 : mrrDeltaCents!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (plan == null ? 0 : plan!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'SaaSEvent[at=$at, category=$category, mrrDeltaCents=$mrrDeltaCents, org=$org, plan=$plan, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.mrrDeltaCents != null) {
      json[r'mrrDeltaCents'] = this.mrrDeltaCents;
    } else {
      json[r'mrrDeltaCents'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.plan != null) {
      json[r'plan'] = this.plan;
    } else {
      json[r'plan'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSEvent(
        at: mapValueOfType<String>(json, r'at'),
        category: mapValueOfType<String>(json, r'category'),
        mrrDeltaCents: mapValueOfType<int>(json, r'mrrDeltaCents'),
        org: mapValueOfType<String>(json, r'org'),
        plan: mapValueOfType<String>(json, r'plan'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<SaaSEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSEvent> mapFromJson(dynamic json) {
    final map = <String, SaaSEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSEvent-objects as value to a dart map
  static Map<String, List<SaaSEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

