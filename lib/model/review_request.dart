//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ReviewRequest {
  /// Returns a new [ReviewRequest] instance.
  ReviewRequest({
    this.glossary = const {},
    this.source_,
    this.state,
    this.target,
    this.text,
    this.tier,
  });
  /// Glossary is the terminology the entry was translated under. Its VERSION — the digest of the sorted terms — is part of the entry's identity, so editing a term yields a new entry rather than overwriting the old rendering.
  Map<String, String> glossary;

  /// Source is the ORIGINAL string this entry translates. Required; part of the entry's identity, so a different source is a different entry.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// State is the entry's new position on the review ladder: suggested, approved or published. `machine` is engine-only and is refused here — a human may not demote a string back into the churn.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? state;

  /// Target is the target language tag (BCP-47, e.g. \"es\" or \"pt-BR\"). Required; part of the entry's identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? target;

  /// Text is the reviewed translation to store. A human write always wins over the stored value.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  /// Tier is the engine tier the entry belongs to, quality (the default) or bulk. Part of the entry's identity: the two tiers keep separate renderings.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tier;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ReviewRequest &&
    _deepEquality.equals(other.glossary, glossary) &&
    other.source_ == source_ &&
    other.state == state &&
    other.target == target &&
    other.text == text &&
    other.tier == tier;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (glossary.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (state == null ? 0 : state!.hashCode) +
    (target == null ? 0 : target!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (tier == null ? 0 : tier!.hashCode);

  @override
  String toString() => 'ReviewRequest[glossary=$glossary, source_=$source_, state=$state, target=$target, text=$text, tier=$tier]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'glossary'] = this.glossary;
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.state != null) {
      json[r'state'] = this.state;
    } else {
      json[r'state'] = null;
    }
    if (this.target != null) {
      json[r'target'] = this.target;
    } else {
      json[r'target'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.tier != null) {
      json[r'tier'] = this.tier;
    } else {
      json[r'tier'] = null;
    }
    return json;
  }

  /// Returns a new [ReviewRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ReviewRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ReviewRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ReviewRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ReviewRequest(
        glossary: mapCastOfType<String, String>(json, r'glossary') ?? const {},
        source_: mapValueOfType<String>(json, r'source'),
        state: mapValueOfType<String>(json, r'state'),
        target: mapValueOfType<String>(json, r'target'),
        text: mapValueOfType<String>(json, r'text'),
        tier: mapValueOfType<String>(json, r'tier'),
      );
    }
    return null;
  }

  static List<ReviewRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ReviewRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ReviewRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ReviewRequest> mapFromJson(dynamic json) {
    final map = <String, ReviewRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ReviewRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ReviewRequest-objects as value to a dart map
  static Map<String, List<ReviewRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ReviewRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ReviewRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

