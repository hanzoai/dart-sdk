//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Top {
  /// Returns a new [Top] instance.
  Top({
    this.end,
    this.models,
    this.products,
    this.range,
    this.scope,
    this.start,
    this.topPages,
    this.topReferrers,
    this.topSources,
  });

  /// End is the window's exclusive upper bound, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? end;

  /// Models ranks the window's LLM models by spend — real per-org data.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TopModels? models;

  /// Products ranks the window's products by revenue.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  TopProducts? products;

  /// Range is the window that was actually applied: 24h, 7d, 30d or custom.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? range;

  /// Scope names the tenant these rankings belong to.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Scope? scope;

  /// Start is the window's inclusive lower bound, RFC3339 UTC.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? start;

  /// Pages ranks the paths visitors requested, by pageviews.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Breakdown? topPages;

  /// Referrers ranks the external domains visitors arrived from, by pageviews.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Breakdown? topReferrers;

  /// Sources ranks the utm_source campaigns visitors arrived on, by pageviews.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Breakdown? topSources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Top &&
    other.end == end &&
    other.models == models &&
    other.products == products &&
    other.range == range &&
    other.scope == scope &&
    other.start == start &&
    other.topPages == topPages &&
    other.topReferrers == topReferrers &&
    other.topSources == topSources;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (end == null ? 0 : end!.hashCode) +
    (models == null ? 0 : models!.hashCode) +
    (products == null ? 0 : products!.hashCode) +
    (range == null ? 0 : range!.hashCode) +
    (scope == null ? 0 : scope!.hashCode) +
    (start == null ? 0 : start!.hashCode) +
    (topPages == null ? 0 : topPages!.hashCode) +
    (topReferrers == null ? 0 : topReferrers!.hashCode) +
    (topSources == null ? 0 : topSources!.hashCode);

  @override
  String toString() => 'Top[end=$end, models=$models, products=$products, range=$range, scope=$scope, start=$start, topPages=$topPages, topReferrers=$topReferrers, topSources=$topSources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.models != null) {
      json[r'models'] = this.models;
    } else {
      json[r'models'] = null;
    }
    if (this.products != null) {
      json[r'products'] = this.products;
    } else {
      json[r'products'] = null;
    }
    if (this.range != null) {
      json[r'range'] = this.range;
    } else {
      json[r'range'] = null;
    }
    if (this.scope != null) {
      json[r'scope'] = this.scope;
    } else {
      json[r'scope'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    if (this.topPages != null) {
      json[r'topPages'] = this.topPages;
    } else {
      json[r'topPages'] = null;
    }
    if (this.topReferrers != null) {
      json[r'topReferrers'] = this.topReferrers;
    } else {
      json[r'topReferrers'] = null;
    }
    if (this.topSources != null) {
      json[r'topSources'] = this.topSources;
    } else {
      json[r'topSources'] = null;
    }
    return json;
  }

  /// Returns a new [Top] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Top? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Top[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Top[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Top(
        end: mapValueOfType<String>(json, r'end'),
        models: TopModels.fromJson(json[r'models']),
        products: TopProducts.fromJson(json[r'products']),
        range: mapValueOfType<String>(json, r'range'),
        scope: Scope.fromJson(json[r'scope']),
        start: mapValueOfType<String>(json, r'start'),
        topPages: Breakdown.fromJson(json[r'topPages']),
        topReferrers: Breakdown.fromJson(json[r'topReferrers']),
        topSources: Breakdown.fromJson(json[r'topSources']),
      );
    }
    return null;
  }

  static List<Top> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Top>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Top.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Top> mapFromJson(dynamic json) {
    final map = <String, Top>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Top.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Top-objects as value to a dart map
  static Map<String, List<Top>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Top>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Top.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

