//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BankQuestion {
  /// Returns a new [BankQuestion] instance.
  BankQuestion({
    this.connector,
    this.createdAt,
    this.externalId,
    this.prompt,
    this.status,
  });
  /// Connector names the feed the unplaceable line arrived on. With externalId it identifies both the question and the bank line it is about, so re-syncing the same deposit never asks twice.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? connector;

  /// CreatedAt is when the question was raised.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// ExternalID is the bank's own id for the line in question.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  /// Prompt is the question put to the founder in plain language — what this money was, since the books cannot place it on their own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? prompt;

  /// Status is whether the question is still open or has been answered.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BankQuestion &&
    other.connector == connector &&
    other.createdAt == createdAt &&
    other.externalId == externalId &&
    other.prompt == prompt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (connector == null ? 0 : connector!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (prompt == null ? 0 : prompt!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BankQuestion[connector=$connector, createdAt=$createdAt, externalId=$externalId, prompt=$prompt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.connector != null) {
      json[r'connector'] = this.connector;
    } else {
      json[r'connector'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.prompt != null) {
      json[r'prompt'] = this.prompt;
    } else {
      json[r'prompt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [BankQuestion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BankQuestion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BankQuestion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BankQuestion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BankQuestion(
        connector: mapValueOfType<String>(json, r'connector'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        prompt: mapValueOfType<String>(json, r'prompt'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<BankQuestion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BankQuestion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BankQuestion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BankQuestion> mapFromJson(dynamic json) {
    final map = <String, BankQuestion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BankQuestion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BankQuestion-objects as value to a dart map
  static Map<String, List<BankQuestion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BankQuestion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BankQuestion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

