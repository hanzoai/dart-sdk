//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskSurface {
  /// Returns a new [RiskSurface] instance.
  RiskSurface({
    this.folded,
    this.gap,
    this.refused,
    this.replayed,
    this.rolled,
    this.window,
  });
  /// Folded is how many buckets of the tenant's own feature surface were folded into the model when it became resident.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? folded;

  /// Gap says why the fold did not happen or did not complete, when that is the case. An empty surface and an unreachable warehouse are different facts and a model must not report them as the same one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? gap;

  /// Refused is how many buckets of this organisation's own surface the fold could not fold, because a subject on them is longer than this plane's own field bound. It is history the model does not have, said out loud.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? refused;

  /// Replayed is how many of this organisation's own recorded observations rebuilt its sliding aggregates when the model became resident. It is what says a rollout was a rebuild rather than a blindness: the aggregates are a projection of a durable record, so a restart costs a replay and not a control.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? replayed;

  /// Rolled is how many windows of this organisation's own source planes — product events, captured failures, metered inference — were rolled up into its feature surface before that fold. Zero with no gap means the surface was already current, which is a different fact from the rollup never running.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rolled;

  /// Window is the lookback the fold covered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? window;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskSurface &&
    other.folded == folded &&
    other.gap == gap &&
    other.refused == refused &&
    other.replayed == replayed &&
    other.rolled == rolled &&
    other.window == window;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (folded == null ? 0 : folded!.hashCode) +
    (gap == null ? 0 : gap!.hashCode) +
    (refused == null ? 0 : refused!.hashCode) +
    (replayed == null ? 0 : replayed!.hashCode) +
    (rolled == null ? 0 : rolled!.hashCode) +
    (window == null ? 0 : window!.hashCode);

  @override
  String toString() => 'RiskSurface[folded=$folded, gap=$gap, refused=$refused, replayed=$replayed, rolled=$rolled, window=$window]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.folded != null) {
      json[r'folded'] = this.folded;
    } else {
      json[r'folded'] = null;
    }
    if (this.gap != null) {
      json[r'gap'] = this.gap;
    } else {
      json[r'gap'] = null;
    }
    if (this.refused != null) {
      json[r'refused'] = this.refused;
    } else {
      json[r'refused'] = null;
    }
    if (this.replayed != null) {
      json[r'replayed'] = this.replayed;
    } else {
      json[r'replayed'] = null;
    }
    if (this.rolled != null) {
      json[r'rolled'] = this.rolled;
    } else {
      json[r'rolled'] = null;
    }
    if (this.window != null) {
      json[r'window'] = this.window;
    } else {
      json[r'window'] = null;
    }
    return json;
  }

  /// Returns a new [RiskSurface] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskSurface? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskSurface[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskSurface[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskSurface(
        folded: mapValueOfType<int>(json, r'folded'),
        gap: mapValueOfType<String>(json, r'gap'),
        refused: mapValueOfType<int>(json, r'refused'),
        replayed: mapValueOfType<int>(json, r'replayed'),
        rolled: mapValueOfType<int>(json, r'rolled'),
        window: mapValueOfType<String>(json, r'window'),
      );
    }
    return null;
  }

  static List<RiskSurface> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskSurface>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskSurface.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskSurface> mapFromJson(dynamic json) {
    final map = <String, RiskSurface>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskSurface.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskSurface-objects as value to a dart map
  static Map<String, List<RiskSurface>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskSurface>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskSurface.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

