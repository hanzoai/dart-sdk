//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Obligation {
  /// Returns a new [Obligation] instance.
  Obligation({
    this.amountCents,
    this.asOf,
    this.code,
    this.every,
    this.label,
    this.minimum,
    this.passThrough,
    this.source_,
    this.stale,
  });
  /// AmountCents is what it costs each period.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// AsOf is when that amount was last checked against its source, RFC 3339 date.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Code names the obligation so a caller can branch without reading prose.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Every is how often it falls due — \"yearly\" for every obligation known here.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? every;

  /// Label is what the payer sees.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// Minimum marks a floor rather than a fixed price — a franchise tax that scales with shares or assets is quoted at its minimum, and an entity past the threshold owes more. Saying so is the difference between a quote and a number someone later disputes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? minimum;

  /// PassThrough marks money we collect and remit to the state rather than keep.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? passThrough;

  /// Source names the authority that publishes a pass-through amount, so the figure can be checked without first working out who would know.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Stale reports that AsOf is older than the review window. It tells; it does not block.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Obligation &&
    other.amountCents == amountCents &&
    other.asOf == asOf &&
    other.code == code &&
    other.every == every &&
    other.label == label &&
    other.minimum == minimum &&
    other.passThrough == passThrough &&
    other.source_ == source_ &&
    other.stale == stale;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (asOf == null ? 0 : asOf!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (every == null ? 0 : every!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (minimum == null ? 0 : minimum!.hashCode) +
    (passThrough == null ? 0 : passThrough!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (stale == null ? 0 : stale!.hashCode);

  @override
  String toString() => 'Obligation[amountCents=$amountCents, asOf=$asOf, code=$code, every=$every, label=$label, minimum=$minimum, passThrough=$passThrough, source_=$source_, stale=$stale]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.asOf != null) {
      json[r'asOf'] = this.asOf;
    } else {
      json[r'asOf'] = null;
    }
    if (this.code != null) {
      json[r'code'] = this.code;
    } else {
      json[r'code'] = null;
    }
    if (this.every != null) {
      json[r'every'] = this.every;
    } else {
      json[r'every'] = null;
    }
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.minimum != null) {
      json[r'minimum'] = this.minimum;
    } else {
      json[r'minimum'] = null;
    }
    if (this.passThrough != null) {
      json[r'passThrough'] = this.passThrough;
    } else {
      json[r'passThrough'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.stale != null) {
      json[r'stale'] = this.stale;
    } else {
      json[r'stale'] = null;
    }
    return json;
  }

  /// Returns a new [Obligation] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Obligation? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Obligation[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Obligation[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Obligation(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        asOf: mapValueOfType<String>(json, r'asOf'),
        code: mapValueOfType<String>(json, r'code'),
        every: mapValueOfType<String>(json, r'every'),
        label: mapValueOfType<String>(json, r'label'),
        minimum: mapValueOfType<bool>(json, r'minimum'),
        passThrough: mapValueOfType<bool>(json, r'passThrough'),
        source_: mapValueOfType<String>(json, r'source'),
        stale: mapValueOfType<bool>(json, r'stale'),
      );
    }
    return null;
  }

  static List<Obligation> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Obligation>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Obligation.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Obligation> mapFromJson(dynamic json) {
    final map = <String, Obligation>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Obligation.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Obligation-objects as value to a dart map
  static Map<String, List<Obligation>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Obligation>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Obligation.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

