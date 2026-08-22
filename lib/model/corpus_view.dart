//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CorpusView {
  /// Returns a new [CorpusView] instance.
  CorpusView({
    this.count,
    this.stage,
    this.strategies = const [],
  });
  /// Count is how many tactics survived every filter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Stage is the growth stage the tag join ran at — the org's observed stage, or the one ?stage= previewed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? stage;

  /// Strategies are the surviving tactics, in corpus authoring order.
  List<StrategyView> strategies;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CorpusView &&
    other.count == count &&
    other.stage == stage &&
    _deepEquality.equals(other.strategies, strategies);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (count == null ? 0 : count!.hashCode) +
    (stage == null ? 0 : stage!.hashCode) +
    (strategies.hashCode);

  @override
  String toString() => 'CorpusView[count=$count, stage=$stage, strategies=$strategies]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.stage != null) {
      json[r'stage'] = this.stage;
    } else {
      json[r'stage'] = null;
    }
      json[r'strategies'] = this.strategies;
    return json;
  }

  /// Returns a new [CorpusView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CorpusView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CorpusView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CorpusView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CorpusView(
        count: mapValueOfType<int>(json, r'count'),
        stage: mapValueOfType<String>(json, r'stage'),
        strategies: StrategyView.listFromJson(json[r'strategies']),
      );
    }
    return null;
  }

  static List<CorpusView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CorpusView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CorpusView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CorpusView> mapFromJson(dynamic json) {
    final map = <String, CorpusView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CorpusView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CorpusView-objects as value to a dart map
  static Map<String, List<CorpusView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CorpusView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CorpusView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

