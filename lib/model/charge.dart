//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Charge {
  /// Returns a new [Charge] instance.
  Charge({
    this.amountCents,
    this.asOf,
    this.code,
    this.label,
    this.passThrough,
    this.recurring,
    this.source_,
    this.stale,
  });
  /// AmountCents is what this line costs.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// AsOf is when a pass-through amount was last checked against its source.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? asOf;

  /// Code names the line so a caller can branch on it without reading prose.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? code;

  /// Label is what the payer sees on the invoice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? label;

  /// PassThrough marks money we collect and remit rather than keep — the state's fee is not our revenue, and a quote that hides that is a quote that reads as a bigger margin than it is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? passThrough;

  /// Recurring marks a line that repeats. An agent of record is billed every year for as long as the entity stands, and a payer agreeing to a one-time total is not agreeing to that.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recurring;

  /// Source names who publishes this amount, for a line we merely pass through. Empty for a price of ours, which needs no external authority.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Stale reports that AsOf is older than the review window — the figure may have moved and nobody has looked. It does not block; it tells.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? stale;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Charge &&
    other.amountCents == amountCents &&
    other.asOf == asOf &&
    other.code == code &&
    other.label == label &&
    other.passThrough == passThrough &&
    other.recurring == recurring &&
    other.source_ == source_ &&
    other.stale == stale;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (asOf == null ? 0 : asOf!.hashCode) +
    (code == null ? 0 : code!.hashCode) +
    (label == null ? 0 : label!.hashCode) +
    (passThrough == null ? 0 : passThrough!.hashCode) +
    (recurring == null ? 0 : recurring!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (stale == null ? 0 : stale!.hashCode);

  @override
  String toString() => 'Charge[amountCents=$amountCents, asOf=$asOf, code=$code, label=$label, passThrough=$passThrough, recurring=$recurring, source_=$source_, stale=$stale]';

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
    if (this.label != null) {
      json[r'label'] = this.label;
    } else {
      json[r'label'] = null;
    }
    if (this.passThrough != null) {
      json[r'passThrough'] = this.passThrough;
    } else {
      json[r'passThrough'] = null;
    }
    if (this.recurring != null) {
      json[r'recurring'] = this.recurring;
    } else {
      json[r'recurring'] = null;
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

  /// Returns a new [Charge] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Charge? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Charge[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Charge[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Charge(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        asOf: mapValueOfType<String>(json, r'asOf'),
        code: mapValueOfType<String>(json, r'code'),
        label: mapValueOfType<String>(json, r'label'),
        passThrough: mapValueOfType<bool>(json, r'passThrough'),
        recurring: mapValueOfType<String>(json, r'recurring'),
        source_: mapValueOfType<String>(json, r'source'),
        stale: mapValueOfType<bool>(json, r'stale'),
      );
    }
    return null;
  }

  static List<Charge> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Charge>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Charge.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Charge> mapFromJson(dynamic json) {
    final map = <String, Charge>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Charge.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Charge-objects as value to a dart map
  static Map<String, List<Charge>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Charge>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Charge.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

