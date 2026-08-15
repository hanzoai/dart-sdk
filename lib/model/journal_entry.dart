//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class JournalEntry {
  /// Returns a new [JournalEntry] instance.
  JournalEntry({
    this.amount,
    this.createdAt,
    this.id,
    this.kind,
    this.memo,
    this.postings = const [],
    this.program,
    this.ref,
  });

  Object? amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? kind;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? memo;

  List<Posting> postings;

  /// referral|affiliate|author for payouts; \"\" otherwise
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? program;

  /// idempotency ref (unique within Kind+Program)
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? ref;

  @override
  bool operator ==(Object other) => identical(this, other) || other is JournalEntry &&
    other.amount == amount &&
    other.createdAt == createdAt &&
    other.id == id &&
    other.kind == kind &&
    other.memo == memo &&
    _deepEquality.equals(other.postings, postings) &&
    other.program == program &&
    other.ref == ref;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (kind == null ? 0 : kind!.hashCode) +
    (memo == null ? 0 : memo!.hashCode) +
    (postings.hashCode) +
    (program == null ? 0 : program!.hashCode) +
    (ref == null ? 0 : ref!.hashCode);

  @override
  String toString() => 'JournalEntry[amount=$amount, createdAt=$createdAt, id=$id, kind=$kind, memo=$memo, postings=$postings, program=$program, ref=$ref]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.memo != null) {
      json[r'memo'] = this.memo;
    } else {
      json[r'memo'] = null;
    }
      json[r'postings'] = this.postings;
    if (this.program != null) {
      json[r'program'] = this.program;
    } else {
      json[r'program'] = null;
    }
    if (this.ref != null) {
      json[r'ref'] = this.ref;
    } else {
      json[r'ref'] = null;
    }
    return json;
  }

  /// Returns a new [JournalEntry] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static JournalEntry? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "JournalEntry[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "JournalEntry[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return JournalEntry(
        amount: mapValueOfType<Object>(json, r'amount'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        id: mapValueOfType<String>(json, r'id'),
        kind: mapValueOfType<String>(json, r'kind'),
        memo: mapValueOfType<String>(json, r'memo'),
        postings: Posting.listFromJson(json[r'postings']),
        program: mapValueOfType<String>(json, r'program'),
        ref: mapValueOfType<String>(json, r'ref'),
      );
    }
    return null;
  }

  static List<JournalEntry> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <JournalEntry>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = JournalEntry.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, JournalEntry> mapFromJson(dynamic json) {
    final map = <String, JournalEntry>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = JournalEntry.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of JournalEntry-objects as value to a dart map
  static Map<String, List<JournalEntry>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<JournalEntry>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = JournalEntry.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

