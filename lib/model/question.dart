//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Question {
  /// Returns a new [Question] instance.
  Question({
    this.account,
    this.amount,
    this.id,
    this.kind,
    this.postedAt,
    this.text,
  });
  /// Account is the chart number the questioned entry posted to, where one applies.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? account;

  /// Amount is the figure that makes the question concrete, already FORMATTED for display with its currency symbol — a string, not cents, and not for arithmetic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? amount;

  /// ID is the source transaction the question is about, so answering it leads straight back to the entry that raised it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Kind is what looked wrong: outlier (a charge far above the usual), reversal (a posting undone), roundoff (a balancing plug big enough to be worth explaining), uncosted (revenue booked with no cost matched to it), or overdrawn (a wallet spent past its balance).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  /// PostedAt anchors the question in time — when the entry it concerns posted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postedAt;

  /// Text is the question itself, written for a founder to answer directly.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Question &&
    other.account == account &&
    other.amount == amount &&
    other.id == id &&
    other.kind == kind &&
    other.postedAt == postedAt &&
    other.text == text;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (account == null ? 0 : account!.hashCode) +
    (amount == null ? 0 : amount!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (postedAt == null ? 0 : postedAt!.hashCode) +
    (text == null ? 0 : text!.hashCode);

  @override
  String toString() => 'Question[account=$account, amount=$amount, id=$id, kind=$kind, postedAt=$postedAt, text=$text]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.account != null) {
      json[r'account'] = this.account;
    } else {
      json[r'account'] = null;
    }
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.kind != null) {
      json[r'kind'] = this.kind;
    } else {
      json[r'kind'] = null;
    }
    if (this.postedAt != null) {
      json[r'postedAt'] = this.postedAt;
    } else {
      json[r'postedAt'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    return json;
  }

  /// Returns a new [Question] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Question? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Question[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Question[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Question(
        account: mapValueOfType<String>(json, r'account'),
        amount: mapValueOfType<String>(json, r'amount'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        postedAt: mapValueOfType<String>(json, r'postedAt'),
        text: mapValueOfType<String>(json, r'text'),
      );
    }
    return null;
  }

  static List<Question> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Question>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Question.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Question> mapFromJson(dynamic json) {
    final map = <String, Question>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Question.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Question-objects as value to a dart map
  static Map<String, List<Question>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Question>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Question.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

