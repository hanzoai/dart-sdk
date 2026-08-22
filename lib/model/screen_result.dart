//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScreenResult {
  /// Returns a new [ScreenResult] instance.
  ScreenResult({
    this.draftReply,
    this.error,
    this.model,
    this.score,
    this.screenedAt,
    this.status,
    this.suggestedCredits,
    this.summary,
    this.tier1Backed,
  });
  /// DraftReply is a suggested email reply for staff to edit and send.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? draftReply;

  /// Error says why a failed screen failed — no AI gateway configured, a gateway error, or a reply that carried no parseable JSON. Absent on success.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? error;

  /// Model is the LLM the screen ran on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Score is the model's 0..100 fit score, clamped to that range.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? score;

  /// ScreenedAt is the unix second the screen finished (0 while pending).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? screenedAt;

  /// Status is the screen's state: pending | done | failed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// SuggestedCredits is the recommended credit grant in USD, snapped to the nearest allowed rung: 0 | 5000 | 25000 | 50000 | 150000.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? suggestedCredits;

  /// Summary is the model's short assessment of the application.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? summary;

  /// Tier1Backed is the model's read on tier-1 backing, normalized to \"yes\", \"no\" or \"unclear\" (anything it cannot resolve reads \"unclear\").
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier1Backed;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScreenResult &&
    other.draftReply == draftReply &&
    other.error == error &&
    other.model == model &&
    other.score == score &&
    other.screenedAt == screenedAt &&
    other.status == status &&
    other.suggestedCredits == suggestedCredits &&
    other.summary == summary &&
    other.tier1Backed == tier1Backed;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (draftReply == null ? 0 : draftReply!.hashCode) +
    (error == null ? 0 : error!.hashCode) +
    (model == null ? 0 : model!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (screenedAt == null ? 0 : screenedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (suggestedCredits == null ? 0 : suggestedCredits!.hashCode) +
    (summary == null ? 0 : summary!.hashCode) +
    (tier1Backed == null ? 0 : tier1Backed!.hashCode);

  @override
  String toString() => 'ScreenResult[draftReply=$draftReply, error=$error, model=$model, score=$score, screenedAt=$screenedAt, status=$status, suggestedCredits=$suggestedCredits, summary=$summary, tier1Backed=$tier1Backed]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.draftReply != null) {
      json[r'draftReply'] = this.draftReply;
    } else {
      json[r'draftReply'] = null;
    }
    if (this.error != null) {
      json[r'error'] = this.error;
    } else {
      json[r'error'] = null;
    }
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.screenedAt != null) {
      json[r'screenedAt'] = this.screenedAt;
    } else {
      json[r'screenedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.suggestedCredits != null) {
      json[r'suggestedCredits'] = this.suggestedCredits;
    } else {
      json[r'suggestedCredits'] = null;
    }
    if (this.summary != null) {
      json[r'summary'] = this.summary;
    } else {
      json[r'summary'] = null;
    }
    if (this.tier1Backed != null) {
      json[r'tier1Backed'] = this.tier1Backed;
    } else {
      json[r'tier1Backed'] = null;
    }
    return json;
  }

  /// Returns a new [ScreenResult] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScreenResult? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScreenResult[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScreenResult[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScreenResult(
        draftReply: mapValueOfType<String>(json, r'draftReply'),
        error: mapValueOfType<String>(json, r'error'),
        model: mapValueOfType<String>(json, r'model'),
        score: mapValueOfType<int>(json, r'score'),
        screenedAt: mapValueOfType<int>(json, r'screenedAt'),
        status: mapValueOfType<String>(json, r'status'),
        suggestedCredits: mapValueOfType<int>(json, r'suggestedCredits'),
        summary: mapValueOfType<String>(json, r'summary'),
        tier1Backed: mapValueOfType<String>(json, r'tier1Backed'),
      );
    }
    return null;
  }

  static List<ScreenResult> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScreenResult>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScreenResult.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScreenResult> mapFromJson(dynamic json) {
    final map = <String, ScreenResult>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScreenResult.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScreenResult-objects as value to a dart map
  static Map<String, List<ScreenResult>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScreenResult>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScreenResult.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

