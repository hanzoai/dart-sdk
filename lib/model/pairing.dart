//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Pairing {
  /// Returns a new [Pairing] instance.
  Pairing({
    this.a,
    this.aCorrect,
    this.b,
    this.bCorrect,
    this.benchmark,
    this.mcnemarP,
    this.nCommon,
    this.netAMinusB,
    this.rescueAOverB,
    this.rescueBOverA,
  });

  /// A is the first model id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? a;

  /// ACorrect is how many of those common items A got right.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? aCorrect;

  /// B is the second model id.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? b;

  /// BCorrect is how many of those common items B got right.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? bCorrect;

  /// Benchmark is the catalog id the two arms were compared on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? benchmark;

  /// McnemarP is the two-sided exact binomial p on the discordant pairs. It is 1 when nothing is discordant, which is \"no evidence of a difference\", not an error.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? mcnemarP;

  /// NCommon is how many items BOTH arms completed. It is the denominator, and the reason this comparison is valid where a raw accuracy difference is not.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? nCommon;

  /// NetAMinusB is the two rescue counts subtracted — A's advantage in items.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? netAMinusB;

  /// RescueAOverB is how many items A got right and B got wrong.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rescueAOverB;

  /// RescueBOverA is how many items B got right and A got wrong.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? rescueBOverA;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pairing &&
    other.a == a &&
    other.aCorrect == aCorrect &&
    other.b == b &&
    other.bCorrect == bCorrect &&
    other.benchmark == benchmark &&
    other.mcnemarP == mcnemarP &&
    other.nCommon == nCommon &&
    other.netAMinusB == netAMinusB &&
    other.rescueAOverB == rescueAOverB &&
    other.rescueBOverA == rescueBOverA;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (a == null ? 0 : a!.hashCode) +
    (aCorrect == null ? 0 : aCorrect!.hashCode) +
    (b == null ? 0 : b!.hashCode) +
    (bCorrect == null ? 0 : bCorrect!.hashCode) +
    (benchmark == null ? 0 : benchmark!.hashCode) +
    (mcnemarP == null ? 0 : mcnemarP!.hashCode) +
    (nCommon == null ? 0 : nCommon!.hashCode) +
    (netAMinusB == null ? 0 : netAMinusB!.hashCode) +
    (rescueAOverB == null ? 0 : rescueAOverB!.hashCode) +
    (rescueBOverA == null ? 0 : rescueBOverA!.hashCode);

  @override
  String toString() => 'Pairing[a=$a, aCorrect=$aCorrect, b=$b, bCorrect=$bCorrect, benchmark=$benchmark, mcnemarP=$mcnemarP, nCommon=$nCommon, netAMinusB=$netAMinusB, rescueAOverB=$rescueAOverB, rescueBOverA=$rescueBOverA]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.a != null) {
      json[r'a'] = this.a;
    } else {
      json[r'a'] = null;
    }
    if (this.aCorrect != null) {
      json[r'a_correct'] = this.aCorrect;
    } else {
      json[r'a_correct'] = null;
    }
    if (this.b != null) {
      json[r'b'] = this.b;
    } else {
      json[r'b'] = null;
    }
    if (this.bCorrect != null) {
      json[r'b_correct'] = this.bCorrect;
    } else {
      json[r'b_correct'] = null;
    }
    if (this.benchmark != null) {
      json[r'benchmark'] = this.benchmark;
    } else {
      json[r'benchmark'] = null;
    }
    if (this.mcnemarP != null) {
      json[r'mcnemar_p'] = this.mcnemarP;
    } else {
      json[r'mcnemar_p'] = null;
    }
    if (this.nCommon != null) {
      json[r'n_common'] = this.nCommon;
    } else {
      json[r'n_common'] = null;
    }
    if (this.netAMinusB != null) {
      json[r'net_a_minus_b'] = this.netAMinusB;
    } else {
      json[r'net_a_minus_b'] = null;
    }
    if (this.rescueAOverB != null) {
      json[r'rescue_a_over_b'] = this.rescueAOverB;
    } else {
      json[r'rescue_a_over_b'] = null;
    }
    if (this.rescueBOverA != null) {
      json[r'rescue_b_over_a'] = this.rescueBOverA;
    } else {
      json[r'rescue_b_over_a'] = null;
    }
    return json;
  }

  /// Returns a new [Pairing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pairing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pairing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pairing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pairing(
        a: mapValueOfType<String>(json, r'a'),
        aCorrect: mapValueOfType<int>(json, r'a_correct'),
        b: mapValueOfType<String>(json, r'b'),
        bCorrect: mapValueOfType<int>(json, r'b_correct'),
        benchmark: mapValueOfType<String>(json, r'benchmark'),
        mcnemarP: num.parse('${json[r'mcnemar_p']}'),
        nCommon: mapValueOfType<int>(json, r'n_common'),
        netAMinusB: mapValueOfType<int>(json, r'net_a_minus_b'),
        rescueAOverB: mapValueOfType<int>(json, r'rescue_a_over_b'),
        rescueBOverA: mapValueOfType<int>(json, r'rescue_b_over_a'),
      );
    }
    return null;
  }

  static List<Pairing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pairing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pairing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pairing> mapFromJson(dynamic json) {
    final map = <String, Pairing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pairing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pairing-objects as value to a dart map
  static Map<String, List<Pairing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pairing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pairing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

