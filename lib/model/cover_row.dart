//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CoverRow {
  /// Returns a new [CoverRow] instance.
  CoverRow({
    this.automated,
    this.edition,
    this.framework,
    this.name,
    this.none,
    this.note,
    this.partial,
    this.publisher,
    this.statement,
    this.total,
    this.unit,
    this.units,
  });
  /// Automated is how many clauses have an automated control behind them that something can fail on behalf of.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? automated;

  /// Edition is which edition the clause list is taken from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? edition;

  /// Framework is the framework id — \"soc2\", \"iso27001\", \"nist80053\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? framework;

  /// Name is the published standard's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// None is how many have nothing behind them. It stays visible rather than dropping out of the fraction.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? none;

  /// Note is what the clause list itself is scoped to, when the framework's catalog says something a count alone would misrepresent.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// Partial is how many are answered in part.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? partial;

  /// Publisher is who publishes it — AICPA, ISO/IEC, NIST.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publisher;

  /// Statement is the counts as one sentence, carrying the unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? statement;

  /// Total is the framework's WHOLE published clause list — the denominator. Counting only the clauses some control happened to name would report 100% every time.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  /// Unit is what ONE clause is — \"criterion\", \"control\", \"family\". A count without its unit is not a fact, so it travels with every number here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? unit;

  /// Units is the plural of Unit, for rendering a sentence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? units;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CoverRow &&
    other.automated == automated &&
    other.edition == edition &&
    other.framework == framework &&
    other.name == name &&
    other.none == none &&
    other.note == note &&
    other.partial == partial &&
    other.publisher == publisher &&
    other.statement == statement &&
    other.total == total &&
    other.unit == unit &&
    other.units == units;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (automated == null ? 0 : automated!.hashCode) +
    (edition == null ? 0 : edition!.hashCode) +
    (framework == null ? 0 : framework!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (none == null ? 0 : none!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (partial == null ? 0 : partial!.hashCode) +
    (publisher == null ? 0 : publisher!.hashCode) +
    (statement == null ? 0 : statement!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (unit == null ? 0 : unit!.hashCode) +
    (units == null ? 0 : units!.hashCode);

  @override
  String toString() => 'CoverRow[automated=$automated, edition=$edition, framework=$framework, name=$name, none=$none, note=$note, partial=$partial, publisher=$publisher, statement=$statement, total=$total, unit=$unit, units=$units]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.automated != null) {
      json[r'automated'] = this.automated;
    } else {
      json[r'automated'] = null;
    }
    if (this.edition != null) {
      json[r'edition'] = this.edition;
    } else {
      json[r'edition'] = null;
    }
    if (this.framework != null) {
      json[r'framework'] = this.framework;
    } else {
      json[r'framework'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.none != null) {
      json[r'none'] = this.none;
    } else {
      json[r'none'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.partial != null) {
      json[r'partial'] = this.partial;
    } else {
      json[r'partial'] = null;
    }
    if (this.publisher != null) {
      json[r'publisher'] = this.publisher;
    } else {
      json[r'publisher'] = null;
    }
    if (this.statement != null) {
      json[r'statement'] = this.statement;
    } else {
      json[r'statement'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.unit != null) {
      json[r'unit'] = this.unit;
    } else {
      json[r'unit'] = null;
    }
    if (this.units != null) {
      json[r'units'] = this.units;
    } else {
      json[r'units'] = null;
    }
    return json;
  }

  /// Returns a new [CoverRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CoverRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CoverRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CoverRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CoverRow(
        automated: mapValueOfType<int>(json, r'automated'),
        edition: mapValueOfType<String>(json, r'edition'),
        framework: mapValueOfType<String>(json, r'framework'),
        name: mapValueOfType<String>(json, r'name'),
        none: mapValueOfType<int>(json, r'none'),
        note: mapValueOfType<String>(json, r'note'),
        partial: mapValueOfType<int>(json, r'partial'),
        publisher: mapValueOfType<String>(json, r'publisher'),
        statement: mapValueOfType<String>(json, r'statement'),
        total: mapValueOfType<int>(json, r'total'),
        unit: mapValueOfType<String>(json, r'unit'),
        units: mapValueOfType<String>(json, r'units'),
      );
    }
    return null;
  }

  static List<CoverRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CoverRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CoverRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CoverRow> mapFromJson(dynamic json) {
    final map = <String, CoverRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CoverRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CoverRow-objects as value to a dart map
  static Map<String, List<CoverRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CoverRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CoverRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

