//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class UpkeepIn {
  /// Returns a new [UpkeepIn] instance.
  UpkeepIn({
    this.agentOfRecord,
    this.jurisdiction,
    this.structure,
  });
  /// AgentOfRecord includes our agent fee, which most entities owe someone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? agentOfRecord;

  /// Jurisdiction is the state the entity stands in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? jurisdiction;

  /// Structure is the entity kind: c-corp, llc or dao-llc.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? structure;

  @override
  bool operator ==(Object other) => identical(this, other) || other is UpkeepIn &&
    other.agentOfRecord == agentOfRecord &&
    other.jurisdiction == jurisdiction &&
    other.structure == structure;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (agentOfRecord == null ? 0 : agentOfRecord!.hashCode) +
    (jurisdiction == null ? 0 : jurisdiction!.hashCode) +
    (structure == null ? 0 : structure!.hashCode);

  @override
  String toString() => 'UpkeepIn[agentOfRecord=$agentOfRecord, jurisdiction=$jurisdiction, structure=$structure]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.agentOfRecord != null) {
      json[r'agentOfRecord'] = this.agentOfRecord;
    } else {
      json[r'agentOfRecord'] = null;
    }
    if (this.jurisdiction != null) {
      json[r'jurisdiction'] = this.jurisdiction;
    } else {
      json[r'jurisdiction'] = null;
    }
    if (this.structure != null) {
      json[r'structure'] = this.structure;
    } else {
      json[r'structure'] = null;
    }
    return json;
  }

  /// Returns a new [UpkeepIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static UpkeepIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "UpkeepIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "UpkeepIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return UpkeepIn(
        agentOfRecord: mapValueOfType<bool>(json, r'agentOfRecord'),
        jurisdiction: mapValueOfType<String>(json, r'jurisdiction'),
        structure: mapValueOfType<String>(json, r'structure'),
      );
    }
    return null;
  }

  static List<UpkeepIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <UpkeepIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = UpkeepIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, UpkeepIn> mapFromJson(dynamic json) {
    final map = <String, UpkeepIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = UpkeepIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of UpkeepIn-objects as value to a dart map
  static Map<String, List<UpkeepIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<UpkeepIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = UpkeepIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

