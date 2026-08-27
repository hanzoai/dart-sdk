//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CaptableRoundDetail {
  /// Returns a new [CaptableRoundDetail] instance.
  CaptableRoundDetail({
    this.investments = const [],
    this.round,
  });
  /// Investments is every investment into this round, oldest first.
  List<CaptableRoundInvestment> investments;

  /// Round is the round's own terms — name, type, valuation, target and status — as against the investments beside it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  CaptableRound? round;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CaptableRoundDetail &&
    _deepEquality.equals(other.investments, investments) &&
    other.round == round;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (investments.hashCode) +
    (round == null ? 0 : round!.hashCode);

  @override
  String toString() => 'CaptableRoundDetail[investments=$investments, round=$round]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'investments'] = this.investments;
    if (this.round != null) {
      json[r'round'] = this.round;
    } else {
      json[r'round'] = null;
    }
    return json;
  }

  /// Returns a new [CaptableRoundDetail] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CaptableRoundDetail? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CaptableRoundDetail[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CaptableRoundDetail[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CaptableRoundDetail(
        investments: CaptableRoundInvestment.listFromJson(json[r'investments']),
        round: CaptableRound.fromJson(json[r'round']),
      );
    }
    return null;
  }

  static List<CaptableRoundDetail> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CaptableRoundDetail>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CaptableRoundDetail.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CaptableRoundDetail> mapFromJson(dynamic json) {
    final map = <String, CaptableRoundDetail>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CaptableRoundDetail.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CaptableRoundDetail-objects as value to a dart map
  static Map<String, List<CaptableRoundDetail>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CaptableRoundDetail>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CaptableRoundDetail.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

