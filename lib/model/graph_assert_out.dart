//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class GraphAssertOut {
  /// Returns a new [GraphAssertOut] instance.
  GraphAssertOut({
    this.duplicate,
    this.reasons = const [],
    this.recorded,
    this.refused,
  });
  /// Duplicate is how many members this plane already held. A redelivery collides on its content address and is counted here, not refused: it is the success a retrying caller depends on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? duplicate;

  /// Reasons names why each refused member was refused, in the order sent.
  List<String> reasons;

  /// Recorded is how many members became new rows.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? recorded;

  /// Refused is how many members were turned away at the door, before the store was touched — a missing entity, a timestamp that is not RFC 3339, a confidence outside [0,1]. The rest of the batch was still recorded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refused;

  @override
  bool operator ==(Object other) => identical(this, other) || other is GraphAssertOut &&
    other.duplicate == duplicate &&
    _deepEquality.equals(other.reasons, reasons) &&
    other.recorded == recorded &&
    other.refused == refused;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (duplicate == null ? 0 : duplicate!.hashCode) +
    (reasons.hashCode) +
    (recorded == null ? 0 : recorded!.hashCode) +
    (refused == null ? 0 : refused!.hashCode);

  @override
  String toString() => 'GraphAssertOut[duplicate=$duplicate, reasons=$reasons, recorded=$recorded, refused=$refused]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.duplicate != null) {
      json[r'duplicate'] = this.duplicate;
    } else {
      json[r'duplicate'] = null;
    }
      json[r'reasons'] = this.reasons;
    if (this.recorded != null) {
      json[r'recorded'] = this.recorded;
    } else {
      json[r'recorded'] = null;
    }
    if (this.refused != null) {
      json[r'refused'] = this.refused;
    } else {
      json[r'refused'] = null;
    }
    return json;
  }

  /// Returns a new [GraphAssertOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static GraphAssertOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "GraphAssertOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "GraphAssertOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return GraphAssertOut(
        duplicate: mapValueOfType<int>(json, r'duplicate'),
        reasons: json[r'reasons'] is Iterable
            ? (json[r'reasons'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        recorded: mapValueOfType<int>(json, r'recorded'),
        refused: mapValueOfType<int>(json, r'refused'),
      );
    }
    return null;
  }

  static List<GraphAssertOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <GraphAssertOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = GraphAssertOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, GraphAssertOut> mapFromJson(dynamic json) {
    final map = <String, GraphAssertOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = GraphAssertOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of GraphAssertOut-objects as value to a dart map
  static Map<String, List<GraphAssertOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<GraphAssertOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = GraphAssertOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

