//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class EsignInsertion {
  /// Returns a new [EsignInsertion] instance.
  EsignInsertion({
    this.fieldId,
    this.inserted,
  });
  /// FieldID is the field that was filled.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? fieldId;

  /// Inserted is true — the field now holds a value. Filling every field still leaves the document pending until the completion call.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? inserted;

  @override
  bool operator ==(Object other) => identical(this, other) || other is EsignInsertion &&
    other.fieldId == fieldId &&
    other.inserted == inserted;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (fieldId == null ? 0 : fieldId!.hashCode) +
    (inserted == null ? 0 : inserted!.hashCode);

  @override
  String toString() => 'EsignInsertion[fieldId=$fieldId, inserted=$inserted]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.fieldId != null) {
      json[r'fieldId'] = this.fieldId;
    } else {
      json[r'fieldId'] = null;
    }
    if (this.inserted != null) {
      json[r'inserted'] = this.inserted;
    } else {
      json[r'inserted'] = null;
    }
    return json;
  }

  /// Returns a new [EsignInsertion] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static EsignInsertion? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "EsignInsertion[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "EsignInsertion[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return EsignInsertion(
        fieldId: mapValueOfType<String>(json, r'fieldId'),
        inserted: mapValueOfType<bool>(json, r'inserted'),
      );
    }
    return null;
  }

  static List<EsignInsertion> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <EsignInsertion>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = EsignInsertion.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, EsignInsertion> mapFromJson(dynamic json) {
    final map = <String, EsignInsertion>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = EsignInsertion.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of EsignInsertion-objects as value to a dart map
  static Map<String, List<EsignInsertion>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<EsignInsertion>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = EsignInsertion.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

