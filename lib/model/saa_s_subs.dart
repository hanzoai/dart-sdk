//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SaaSSubs {
  /// Returns a new [SaaSSubs] instance.
  SaaSSubs({
    this.byPlan = const [],
    this.canceled,
    this.new_,
    this.recent = const [],
    this.trialsActive,
  });

  List<SaaSPlan> byPlan;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? canceled;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? new_;

  List<SaaSEvent> recent;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? trialsActive;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SaaSSubs &&
    _deepEquality.equals(other.byPlan, byPlan) &&
    other.canceled == canceled &&
    other.new_ == new_ &&
    _deepEquality.equals(other.recent, recent) &&
    other.trialsActive == trialsActive;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byPlan.hashCode) +
    (canceled == null ? 0 : canceled!.hashCode) +
    (new_ == null ? 0 : new_!.hashCode) +
    (recent.hashCode) +
    (trialsActive == null ? 0 : trialsActive!.hashCode);

  @override
  String toString() => 'SaaSSubs[byPlan=$byPlan, canceled=$canceled, new_=$new_, recent=$recent, trialsActive=$trialsActive]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'byPlan'] = this.byPlan;
    if (this.canceled != null) {
      json[r'canceled'] = this.canceled;
    } else {
      json[r'canceled'] = null;
    }
    if (this.new_ != null) {
      json[r'new'] = this.new_;
    } else {
      json[r'new'] = null;
    }
      json[r'recent'] = this.recent;
    if (this.trialsActive != null) {
      json[r'trialsActive'] = this.trialsActive;
    } else {
      json[r'trialsActive'] = null;
    }
    return json;
  }

  /// Returns a new [SaaSSubs] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SaaSSubs? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SaaSSubs[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SaaSSubs[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SaaSSubs(
        byPlan: SaaSPlan.listFromJson(json[r'byPlan']),
        canceled: mapValueOfType<int>(json, r'canceled'),
        new_: mapValueOfType<int>(json, r'new'),
        recent: SaaSEvent.listFromJson(json[r'recent']),
        trialsActive: mapValueOfType<int>(json, r'trialsActive'),
      );
    }
    return null;
  }

  static List<SaaSSubs> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SaaSSubs>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SaaSSubs.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SaaSSubs> mapFromJson(dynamic json) {
    final map = <String, SaaSSubs>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SaaSSubs.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SaaSSubs-objects as value to a dart map
  static Map<String, List<SaaSSubs>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SaaSSubs>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SaaSSubs.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

