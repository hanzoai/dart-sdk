//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskDatasetSpec {
  /// Returns a new [RiskDatasetSpec] instance.
  RiskDatasetSpec({
    this.cuts = const [],
    this.dims = const [],
    this.from,
    this.horizon,
    this.kind,
    this.name,
    this.rows,
    this.seed,
    this.to,
  });

  /// Cuts are the two RFC 3339 instants dividing train | val | test. Omit them to take 70% and 85% of the window by time. Splitting is TEMPORAL and then grouped by subject — a random split puts one device on both sides of the line and the model memorises the entity instead of the behaviour.
  List<String> cuts;

  /// Dims are the coordinates to carry, by published name. Empty takes the whole surface. They are stored in the plane's own order, never the order given, so two requests naming the same dims produce identical rows.
  List<String> dims;

  /// From and To bound the event window, half-open, RFC 3339. The window may not be longer than the source's own retention: past that, its older half is already gone and the dataset would silently be shorter than it says.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? from;

  /// Horizon is how many days a row must have aged before it may be admitted. It is what keeps a fact that was not yet knowable at scoring time out of a training set: a chargeback lands 30 to 120 days after the transaction it condemns, so 120 for the payment lane and 14 for signup abuse. Zero admits the whole window and is honest only where the outcome is immediate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? horizon;

  /// Kind narrows to one subject kind — person, session or account. Empty takes every kind.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// Name identifies the dataset across its versions: lower-case letters, digits and hyphens, starting with a letter.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Rows caps the materialisation. Zero takes the plane's own bound.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rows;

  /// Seed decides WHICH subjects are admitted when the window holds more rows than the cap allows. It is recorded on the version, so a capped dataset is reproducible rather than being whichever rows the store returned first. Omit it to seed from the dataset's name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? seed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? to;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskDatasetSpec &&
    _deepEquality.equals(other.cuts, cuts) &&
    _deepEquality.equals(other.dims, dims) &&
    other.from == from &&
    other.horizon == horizon &&
    other.kind == kind &&
    other.name == name &&
    other.rows == rows &&
    other.seed == seed &&
    other.to == to;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (cuts.hashCode) +
    (dims.hashCode) +
    (from == null ? 0 : from!.hashCode) +
    (horizon == null ? 0 : horizon!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (rows == null ? 0 : rows!.hashCode) +
    (seed == null ? 0 : seed!.hashCode) +
    (to == null ? 0 : to!.hashCode);

  @override
  String toString() => 'RiskDatasetSpec[cuts=$cuts, dims=$dims, from=$from, horizon=$horizon, kind=$kind, name=$name, rows=$rows, seed=$seed, to=$to]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'cuts'] = this.cuts;
      json[r'dims'] = this.dims;
    if (this.from != null) {
      json[r'from'] = this.from;
    } else {
      json[r'from'] = null;
    }
    if (this.horizon != null) {
      json[r'horizon'] = this.horizon;
    } else {
      json[r'horizon'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.rows != null) {
      json[r'rows'] = this.rows;
    } else {
      json[r'rows'] = null;
    }
    if (this.seed != null) {
      json[r'seed'] = this.seed;
    } else {
      json[r'seed'] = null;
    }
    if (this.to != null) {
      json[r'to'] = this.to;
    } else {
      json[r'to'] = null;
    }
    return json;
  }

  /// Returns a new [RiskDatasetSpec] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskDatasetSpec? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskDatasetSpec[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskDatasetSpec[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskDatasetSpec(
        cuts: json[r'cuts'] is Iterable
            ? (json[r'cuts'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        dims: json[r'dims'] is Iterable
            ? (json[r'dims'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        from: mapValueOfType<String>(json, r'from'),
        horizon: mapValueOfType<int>(json, r'horizon'),
        kind: mapValueOfType<String>(json, r'kind'),
        name: mapValueOfType<String>(json, r'name'),
        rows: mapValueOfType<int>(json, r'rows'),
        seed: mapValueOfType<String>(json, r'seed'),
        to: mapValueOfType<String>(json, r'to'),
      );
    }
    return null;
  }

  static List<RiskDatasetSpec> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskDatasetSpec>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskDatasetSpec.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskDatasetSpec> mapFromJson(dynamic json) {
    final map = <String, RiskDatasetSpec>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskDatasetSpec.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskDatasetSpec-objects as value to a dart map
  static Map<String, List<RiskDatasetSpec>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskDatasetSpec>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskDatasetSpec.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

