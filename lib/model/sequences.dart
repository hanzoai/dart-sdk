//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Sequences {
  /// Returns a new [Sequences] instance.
  Sequences({
    this.consumerSeq,
    this.streamSeq,
  });
  /// Consumer is the consumer's own sequence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? consumerSeq;

  /// Stream is the corresponding stream sequence.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? streamSeq;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Sequences &&
    other.consumerSeq == consumerSeq &&
    other.streamSeq == streamSeq;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (consumerSeq == null ? 0 : consumerSeq!.hashCode) +
    (streamSeq == null ? 0 : streamSeq!.hashCode);

  @override
  String toString() => 'Sequences[consumerSeq=$consumerSeq, streamSeq=$streamSeq]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.consumerSeq != null) {
      json[r'consumer_seq'] = this.consumerSeq;
    } else {
      json[r'consumer_seq'] = null;
    }
    if (this.streamSeq != null) {
      json[r'stream_seq'] = this.streamSeq;
    } else {
      json[r'stream_seq'] = null;
    }
    return json;
  }

  /// Returns a new [Sequences] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Sequences? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Sequences[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Sequences[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Sequences(
        consumerSeq: mapValueOfType<int>(json, r'consumer_seq'),
        streamSeq: mapValueOfType<int>(json, r'stream_seq'),
      );
    }
    return null;
  }

  static List<Sequences> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Sequences>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Sequences.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Sequences> mapFromJson(dynamic json) {
    final map = <String, Sequences>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Sequences.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Sequences-objects as value to a dart map
  static Map<String, List<Sequences>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Sequences>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Sequences.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

