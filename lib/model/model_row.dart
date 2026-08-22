//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ModelRow {
  /// Returns a new [ModelRow] instance.
  ModelRow({
    this.model,
    this.pct,
    this.provider,
    this.requests,
    this.spendCents,
    this.tokens,
  });
  /// Model is the model id, e.g. zen5-coder.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? model;

  /// Pct is this model's share of the window's returned spend, 0..100, one decimal.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? pct;

  /// Provider is who served it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? provider;

  /// Requests is how many calls went to this model.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? requests;

  /// SpendCents is what they cost, in cents.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? spendCents;

  /// Tokens is prompt plus completion tokens over those calls.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokens;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ModelRow &&
    other.model == model &&
    other.pct == pct &&
    other.provider == provider &&
    other.requests == requests &&
    other.spendCents == spendCents &&
    other.tokens == tokens;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (model == null ? 0 : model!.hashCode) +
    (pct == null ? 0 : pct!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (requests == null ? 0 : requests!.hashCode) +
    (spendCents == null ? 0 : spendCents!.hashCode) +
    (tokens == null ? 0 : tokens!.hashCode);

  @override
  String toString() => 'ModelRow[model=$model, pct=$pct, provider=$provider, requests=$requests, spendCents=$spendCents, tokens=$tokens]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.model != null) {
      json[r'model'] = this.model;
    } else {
      json[r'model'] = null;
    }
    if (this.pct != null) {
      json[r'pct'] = this.pct;
    } else {
      json[r'pct'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.requests != null) {
      json[r'requests'] = this.requests;
    } else {
      json[r'requests'] = null;
    }
    if (this.spendCents != null) {
      json[r'spendCents'] = this.spendCents;
    } else {
      json[r'spendCents'] = null;
    }
    if (this.tokens != null) {
      json[r'tokens'] = this.tokens;
    } else {
      json[r'tokens'] = null;
    }
    return json;
  }

  /// Returns a new [ModelRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ModelRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ModelRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ModelRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ModelRow(
        model: mapValueOfType<String>(json, r'model'),
        pct: num.parse('${json[r'pct']}'),
        provider: mapValueOfType<String>(json, r'provider'),
        requests: mapValueOfType<int>(json, r'requests'),
        spendCents: mapValueOfType<int>(json, r'spendCents'),
        tokens: mapValueOfType<int>(json, r'tokens'),
      );
    }
    return null;
  }

  static List<ModelRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ModelRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ModelRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ModelRow> mapFromJson(dynamic json) {
    final map = <String, ModelRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ModelRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ModelRow-objects as value to a dart map
  static Map<String, List<ModelRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ModelRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ModelRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

