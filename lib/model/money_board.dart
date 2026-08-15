//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MoneyBoard {
  /// Returns a new [MoneyBoard] instance.
  MoneyBoard({
    this.byOrg = const [],
    this.credits,
    this.generatedAt,
    this.infrastructure,
    this.margin,
    this.revenue,
    this.sources = const [],
  });

  List<MoneyOrgRow> byOrg;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoneyCredits? credits;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? generatedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoneyInfra? infrastructure;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoneyMargin? margin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  MoneyRevenue? revenue;

  List<SourceStatus> sources;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MoneyBoard &&
    _deepEquality.equals(other.byOrg, byOrg) &&
    other.credits == credits &&
    other.generatedAt == generatedAt &&
    other.infrastructure == infrastructure &&
    other.margin == margin &&
    other.revenue == revenue &&
    _deepEquality.equals(other.sources, sources);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (byOrg.hashCode) +
    (credits == null ? 0 : credits!.hashCode) +
    (generatedAt == null ? 0 : generatedAt!.hashCode) +
    (infrastructure == null ? 0 : infrastructure!.hashCode) +
    (margin == null ? 0 : margin!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (sources.hashCode);

  @override
  String toString() => 'MoneyBoard[byOrg=$byOrg, credits=$credits, generatedAt=$generatedAt, infrastructure=$infrastructure, margin=$margin, revenue=$revenue, sources=$sources]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'byOrg'] = this.byOrg;
    if (this.credits != null) {
      json[r'credits'] = this.credits;
    } else {
      json[r'credits'] = null;
    }
    if (this.generatedAt != null) {
      json[r'generatedAt'] = this.generatedAt;
    } else {
      json[r'generatedAt'] = null;
    }
    if (this.infrastructure != null) {
      json[r'infrastructure'] = this.infrastructure;
    } else {
      json[r'infrastructure'] = null;
    }
    if (this.margin != null) {
      json[r'margin'] = this.margin;
    } else {
      json[r'margin'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
      json[r'sources'] = this.sources;
    return json;
  }

  /// Returns a new [MoneyBoard] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MoneyBoard? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MoneyBoard[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MoneyBoard[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MoneyBoard(
        byOrg: MoneyOrgRow.listFromJson(json[r'byOrg']),
        credits: MoneyCredits.fromJson(json[r'credits']),
        generatedAt: mapValueOfType<String>(json, r'generatedAt'),
        infrastructure: MoneyInfra.fromJson(json[r'infrastructure']),
        margin: MoneyMargin.fromJson(json[r'margin']),
        revenue: MoneyRevenue.fromJson(json[r'revenue']),
        sources: SourceStatus.listFromJson(json[r'sources']),
      );
    }
    return null;
  }

  static List<MoneyBoard> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MoneyBoard>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MoneyBoard.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MoneyBoard> mapFromJson(dynamic json) {
    final map = <String, MoneyBoard>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MoneyBoard.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MoneyBoard-objects as value to a dart map
  static Map<String, List<MoneyBoard>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MoneyBoard>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MoneyBoard.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

