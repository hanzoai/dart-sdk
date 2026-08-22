//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class StrategyView {
  /// Returns a new [StrategyView] instance.
  StrategyView({
    this.action,
    this.category,
    this.id,
    this.tags = const [],
    this.workload,
  });
  /// Action is the tactic itself: the thing to go and do.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// Category is the growth discipline the tactic belongs to — the axis `?category=` narrows on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// ID is the tactic's stable slug in the corpus.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Tags are the PRECONDITIONS this tactic already satisfied to appear in the answer — `stage:<name>` and `has:<capability>` predicates over the org's observed profile. They are carried back so a caller can show why a tactic surfaced, not so it can filter again.
  List<String> tags;

  /// Workload is how much effort running the tactic costs, so a corpus can be cut to what the org has the hands for.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is StrategyView &&
    other.action == action &&
    other.category == category &&
    other.id == id &&
    _deepEquality.equals(other.tags, tags) &&
    other.workload == workload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (tags.hashCode) +
    (workload == null ? 0 : workload!.hashCode);

  @override
  String toString() => 'StrategyView[action=$action, category=$category, id=$id, tags=$tags, workload=$workload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.workload != null) {
      json[r'workload'] = this.workload;
    } else {
      json[r'workload'] = null;
    }
    return json;
  }

  /// Returns a new [StrategyView] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static StrategyView? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "StrategyView[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "StrategyView[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return StrategyView(
        action: mapValueOfType<String>(json, r'action'),
        category: mapValueOfType<String>(json, r'category'),
        id: mapValueOfType<String>(json, r'id'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        workload: mapValueOfType<String>(json, r'workload'),
      );
    }
    return null;
  }

  static List<StrategyView> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <StrategyView>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = StrategyView.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, StrategyView> mapFromJson(dynamic json) {
    final map = <String, StrategyView>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = StrategyView.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of StrategyView-objects as value to a dart map
  static Map<String, List<StrategyView>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<StrategyView>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = StrategyView.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

