//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class AnalyticsView {
  /// Returns a new [AnalyticsView] instance.
  AnalyticsView({
    this.funnel,
    this.recommendations = const [],
  });

  /// Funnel is the org's trailing-30-day traffic → signups → orders from the shared analytics warehouse; available is false when it has emitted nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Funnel? funnel;

  /// Recommendations are the next-best GTM actions derived from that funnel.
  List<String> recommendations;

  @override
  bool operator ==(Object other) => identical(this, other) || other is AnalyticsView &&
    other.funnel == funnel &&
    _deepEquality.equals(other.recommendations, recommendations);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (funnel == null ? 0 : funnel!.hashCode) +
    (recommendations.hashCode);

  @override
  String toString() => 'AnalyticsView[funnel=$funnel, recommendations=$recommendations]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.funnel != null) {
      json[r'funnel'] = this.funnel;
    } else {
      json[r'funnel'] = null;
    }
      json[r'recommendations'] = this.recommendations;
    return json;
  }

  /// Returns a new [AnalyticsView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static AnalyticsView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "AnalyticsView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "AnalyticsView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return AnalyticsView(
        funnel: Funnel.fromJson(json[r'funnel']),
        recommendations: json[r'recommendations'] is Iterable
            ? (json[r'recommendations'] as Iterable).cast<String>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<AnalyticsView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <AnalyticsView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = AnalyticsView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, AnalyticsView> mapFromJson(dynamic json) {
    final map = <String, AnalyticsView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = AnalyticsView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of AnalyticsView-objects as value to a dart map
  static Map<String, List<AnalyticsView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<AnalyticsView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = AnalyticsView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

