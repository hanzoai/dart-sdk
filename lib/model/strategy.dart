//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Strategy {
  /// Returns a new [Strategy] instance.
  Strategy({
    this.action,
    this.blog,
    this.category,
    this.enabled,
    this.era,
    this.id,
    this.principle,
    this.source_,
    this.tags = const [],
    this.workload,
  });
  /// Action is the tactic itself: the thing to go and do, stated imperatively.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? action;

  /// Blog is the tactic's long-form explainer; absent for tactics that have none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Blog? blog;

  /// Category is the growth discipline the tactic belongs to — the axis `?category=` narrows the corpus on, and one of the facets a caller browses by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Enabled is the admin lever. Absent reads as ON; an explicit false drops the tactic from every org-facing corpus read while leaving it in the document.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? enabled;

  /// Era separates an AI-era tactic (`modern`) from a classical one (`heritage`).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? era;

  /// ID is the tactic's stable slug, unique across the corpus.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Principle is the spine slug this tactic files under (a Principle.Slug).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? principle;

  /// Source is where the tactic came from — the attribution a reader is owed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Tags are PRECONDITIONS, not labels — every one must be satisfied by the org's observed profile before the tactic surfaces, so an untagged tactic is universally applicable. Two vocabularies: `stage:<research|formed|launched| activated|scaling>` reads the org's growth stage, `has:<capability>` reads an observed signal.
  List<String> tags;

  /// Workload is how much effort running the tactic costs, so a corpus can be narrowed to what an org has the hands for right now.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? workload;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Strategy &&
    other.action == action &&
    other.blog == blog &&
    other.category == category &&
    other.enabled == enabled &&
    other.era == era &&
    other.id == id &&
    other.principle == principle &&
    other.source_ == source_ &&
    _deepEquality.equals(other.tags, tags) &&
    other.workload == workload;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (action == null ? 0 : action!.hashCode) +
    (blog == null ? 0 : blog!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (enabled == null ? 0 : enabled!.hashCode) +
    (era == null ? 0 : era!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (principle == null ? 0 : principle!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (tags.hashCode) +
    (workload == null ? 0 : workload!.hashCode);

  @override
  String toString() => 'Strategy[action=$action, blog=$blog, category=$category, enabled=$enabled, era=$era, id=$id, principle=$principle, source_=$source_, tags=$tags, workload=$workload]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.action != null) {
      json[r'action'] = this.action;
    } else {
      json[r'action'] = null;
    }
    if (this.blog != null) {
      json[r'blog'] = this.blog;
    } else {
      json[r'blog'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.enabled != null) {
      json[r'enabled'] = this.enabled;
    } else {
      json[r'enabled'] = null;
    }
    if (this.era != null) {
      json[r'era'] = this.era;
    } else {
      json[r'era'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.principle != null) {
      json[r'principle'] = this.principle;
    } else {
      json[r'principle'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
      json[r'tags'] = this.tags;
    if (this.workload != null) {
      json[r'workload'] = this.workload;
    } else {
      json[r'workload'] = null;
    }
    return json;
  }

  /// Returns a new [Strategy] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Strategy? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Strategy[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Strategy[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Strategy(
        action: mapValueOfType<String>(json, r'action'),
        blog: Blog.fromJson(json[r'blog']),
        category: mapValueOfType<String>(json, r'category'),
        enabled: mapValueOfType<bool>(json, r'enabled'),
        era: mapValueOfType<String>(json, r'era'),
        id: mapValueOfType<String>(json, r'id'),
        principle: mapValueOfType<String>(json, r'principle'),
        source_: mapValueOfType<String>(json, r'source'),
        tags: json[r'tags'] is Iterable
            ? (json[r'tags'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        workload: mapValueOfType<String>(json, r'workload'),
      );
    }
    return null;
  }

  static List<Strategy> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Strategy>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Strategy.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Strategy> mapFromJson(dynamic json) {
    final map = <String, Strategy>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Strategy.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Strategy-objects as value to a dart map
  static Map<String, List<Strategy>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Strategy>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Strategy.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

