//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskLabelEvent {
  /// Returns a new [RiskLabelEvent] instance.
  RiskLabelEvent({
    this.at,
    this.kind,
    this.subject,
  });
  /// At is the event's own instant, RFC 3339. It is part of the event's IDENTITY and not a filter: it is matched exactly, to the second, against the `at` the assertions were filed under, so an instant a second off names a different event and resolves to nothing. It is also what this event's as-of is measured from — At plus the horizon.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Kind is the judged entity's type, from the closed set: account, agent, merchant, payout, person, session or transaction. One outside it is refused rather than answered `unlabelled`, because it could only ever match nothing and the caller would read a real absence into a typo.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Subject is the entity id in the tenant's own namespace, at most 512 bytes. It is matched EXACTLY against what was recorded — this is a lookup, not a search, and no prefix, pattern or normalisation is applied.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? subject;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskLabelEvent &&
    other.at == at &&
    other.kind == kind &&
    other.subject == subject;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (subject == null ? 0 : subject!.hashCode);

  @override
  String toString() => 'RiskLabelEvent[at=$at, kind=$kind, subject=$subject]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.subject != null) {
      json[r'subject'] = this.subject;
    } else {
      json[r'subject'] = null;
    }
    return json;
  }

  /// Returns a new [RiskLabelEvent] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskLabelEvent? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskLabelEvent[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskLabelEvent[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskLabelEvent(
        at: mapValueOfType<String>(json, r'at'),
        kind: mapValueOfType<String>(json, r'kind'),
        subject: mapValueOfType<String>(json, r'subject'),
      );
    }
    return null;
  }

  static List<RiskLabelEvent> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskLabelEvent>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskLabelEvent.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskLabelEvent> mapFromJson(dynamic json) {
    final map = <String, RiskLabelEvent>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskLabelEvent.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskLabelEvent-objects as value to a dart map
  static Map<String, List<RiskLabelEvent>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskLabelEvent>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskLabelEvent.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

