//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class RiskModelValue {
  /// Returns a new [RiskModelValue] instance.
  RiskModelValue({
    this.address,
    this.at,
    this.learned,
    this.sequence,
    this.shape,
    this.warmed,
  });
  /// Address names this value by its own content: the model's shape, the geometry seed, its position in the window, its threshold, its masses as IEEE-754 bits and the fold watermark behind them. Nothing else — no clock, no counter and deliberately NOT the organisation, so an identical model has one name and a name is never an authority. Holding another organisation's address resolves nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? address;

  /// At is when it was published, RFC 3339, on the server clock. You do not supply it: a record whose date the audited party chose is not a record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  /// Learned is how many events are behind the masses.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? learned;

  /// Sequence is this value's place in YOUR organisation's own history, from 1 and contiguous until retention disposes of the oldest.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sequence;

  /// Shape NAMES the model space the masses are only meaningful against, as `<family>:<digest>` — the KIND of model, and that family's own digest over the feature inventory in order and the detector's geometry parameters. Compare it with the `shape` on your model state (GET /v1/risk/state): equal means adopting this value restores masses into the space already running, and different means adopting it REPLANTS the model into the space this value describes. That is what makes a searched shape installable.  A DIFFERENT FAMILY IS NOT ADOPTABLE AT ALL, and that is the one difference the family term makes here: a different geometry in the same family is a replant, and a different family is a refusal naming both — its masses do not describe your model in any space.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? shape;

  /// Warmed is how far your own event surface had been folded in when this value was published, RFC 3339. It is part of the address because two models with identical masses reached by different routes disagree about what is left to fold, and one of them will re-teach history the other will not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? warmed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is RiskModelValue &&
    other.address == address &&
    other.at == at &&
    other.learned == learned &&
    other.sequence == sequence &&
    other.shape == shape &&
    other.warmed == warmed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (address == null ? 0 : address!.hashCode) +
    (at == null ? 0 : at!.hashCode) +
    (learned == null ? 0 : learned!.hashCode) +
    (sequence == null ? 0 : sequence!.hashCode) +
    (shape == null ? 0 : shape!.hashCode) +
    (warmed == null ? 0 : warmed!.hashCode);

  @override
  String toString() => 'RiskModelValue[address=$address, at=$at, learned=$learned, sequence=$sequence, shape=$shape, warmed=$warmed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.address != null) {
      json[r'address'] = this.address;
    } else {
      json[r'address'] = null;
    }
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.learned != null) {
      json[r'learned'] = this.learned;
    } else {
      json[r'learned'] = null;
    }
    if (this.sequence != null) {
      json[r'sequence'] = this.sequence;
    } else {
      json[r'sequence'] = null;
    }
    if (this.shape != null) {
      json[r'shape'] = this.shape;
    } else {
      json[r'shape'] = null;
    }
    if (this.warmed != null) {
      json[r'warmed'] = this.warmed;
    } else {
      json[r'warmed'] = null;
    }
    return json;
  }

  /// Returns a new [RiskModelValue] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static RiskModelValue? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "RiskModelValue[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "RiskModelValue[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return RiskModelValue(
        address: mapValueOfType<String>(json, r'address'),
        at: mapValueOfType<String>(json, r'at'),
        learned: mapValueOfType<int>(json, r'learned'),
        sequence: mapValueOfType<int>(json, r'sequence'),
        shape: mapValueOfType<String>(json, r'shape'),
        warmed: mapValueOfType<String>(json, r'warmed'),
      );
    }
    return null;
  }

  static List<RiskModelValue> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <RiskModelValue>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = RiskModelValue.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, RiskModelValue> mapFromJson(dynamic json) {
    final map = <String, RiskModelValue>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = RiskModelValue.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of RiskModelValue-objects as value to a dart map
  static Map<String, List<RiskModelValue>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<RiskModelValue>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = RiskModelValue.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

