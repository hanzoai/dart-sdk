//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskHoldIn {
  /// Returns a new [RiskHoldIn] instance.
  RiskHoldIn({
    this.hold,
    this.ids = const [],
  });

  /// Hold is the state to put them in: true places the hold, false releases it. One op both ways, because a hold that can be placed and not released pins a compliance record past every retention boundary with nothing able to let it go — and an operator who cannot release a hold stops placing them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? hold;

  /// IDs are the content digests of the records, as returned by the write and by the read. They name records in THIS tenant's plane; an id belonging to anybody else names nothing here, because the statement runs against this tenant's own file and there is no other file it could reach.
  List<String> ids;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskHoldIn &&
    other.hold == hold &&
    _deepEquality.equals(other.ids, ids);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (hold == null ? 0 : hold!.hashCode) +
    (ids.hashCode);

  @override
  String toString() => 'RiskHoldIn[hold=$hold, ids=$ids]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.hold != null) {
      json[r'hold'] = this.hold;
    } else {
      json[r'hold'] = null;
    }
      json[r'ids'] = this.ids;
    return json;
  }

  /// Returns a new [RiskHoldIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskHoldIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskHoldIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskHoldIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskHoldIn(
        hold: mapValueOfType<bool>(json, r'hold'),
        ids: json[r'ids'] is Iterable
            ? (json[r'ids'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<RiskHoldIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskHoldIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskHoldIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskHoldIn> mapFromJson(dynamic json) {
    final map = <String, RiskHoldIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskHoldIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskHoldIn-objects as value to a dart map
  static Map<String, List<RiskHoldIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskHoldIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskHoldIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

