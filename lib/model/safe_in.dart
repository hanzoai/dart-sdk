//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class SafeIn {
  /// Returns a new [SafeIn] instance.
  SafeIn({
    this.documentIds = const [],
    this.signers = const [],
  });
  /// DocumentIDs are data room document ids to raise a signature request over. Required.
  List<String> documentIds;

  /// Signers are the recipients, each a name and an email. Required.
  List<Signer> signers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is SafeIn &&
    _deepEquality.equals(other.documentIds, documentIds) &&
    _deepEquality.equals(other.signers, signers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (documentIds.hashCode) +
    (signers.hashCode);

  @override
  String toString() => 'SafeIn[documentIds=$documentIds, signers=$signers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'documentIds'] = this.documentIds;
      json[r'signers'] = this.signers;
    return json;
  }

  /// Returns a new [SafeIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static SafeIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "SafeIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "SafeIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return SafeIn(
        documentIds: json[r'documentIds'] is Iterable
            ? (json[r'documentIds'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        signers: Signer.listFromJson(json[r'signers']),
      );
    }
    return null;
  }

  static List<SafeIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <SafeIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = SafeIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, SafeIn> mapFromJson(dynamic json) {
    final map = <String, SafeIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = SafeIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of SafeIn-objects as value to a dart map
  static Map<String, List<SafeIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<SafeIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = SafeIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

