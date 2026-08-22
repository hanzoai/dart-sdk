//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class FaqList {
  /// Returns a new [FaqList] instance.
  FaqList({
    this.faq = const [],
  });
  /// Faq is the questions and their answers.
  List<Object> faq;

  @override
  bool operator ==(Object other) => identical(this, other) || other is FaqList &&
    _deepEquality.equals(other.faq, faq);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (faq.hashCode);

  @override
  String toString() => 'FaqList[faq=$faq]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'faq'] = this.faq;
    return json;
  }

  /// Returns a new [FaqList] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static FaqList? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "FaqList[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "FaqList[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return FaqList(
        faq: json[r'faq'] is Iterable
            ? (json[r'faq'] as Iterable).cast<Object>().toList(growable: false)
            : const [],
      );
    }
    return null;
  }

  static List<FaqList> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <FaqList>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = FaqList.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, FaqList> mapFromJson(dynamic json) {
    final map = <String, FaqList>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = FaqList.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of FaqList-objects as value to a dart map
  static Map<String, List<FaqList>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<FaqList>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = FaqList.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

