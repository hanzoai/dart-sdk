//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ItemReq {
  /// Returns a new [ItemReq] instance.
  ItemReq({
    this.expectedOutput,
    this.id,
    this.input,
    this.metadata = const {},
    this.status,
  });
  Object? expectedOutput;

  /// ID makes the write idempotent — re-posting the same id replaces that example in place. Omit it and one is generated. An id that already exists in a DIFFERENT dataset is 409 rather than a move.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? input;

  /// Metadata is a free-form object stored with the example.
  Map<String, Object> metadata;

  /// Status is ACTIVE (the default) or ARCHIVED. Only ACTIVE examples are fed to a run, which is how an example is retired without being deleted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ItemReq &&
    other.expectedOutput == expectedOutput &&
    other.id == id &&
    other.input == input &&
    _deepEquality.equals(other.metadata, metadata) &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (expectedOutput == null ? 0 : expectedOutput!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (input == null ? 0 : input!.hashCode) +
    (metadata.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'ItemReq[expectedOutput=$expectedOutput, id=$id, input=$input, metadata=$metadata, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.expectedOutput != null) {
      json[r'expectedOutput'] = this.expectedOutput;
    } else {
      json[r'expectedOutput'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.input != null) {
      json[r'input'] = this.input;
    } else {
      json[r'input'] = null;
    }
      json[r'metadata'] = this.metadata;
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [ItemReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ItemReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ItemReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ItemReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ItemReq(
        expectedOutput: mapValueOfType<Object>(json, r'expectedOutput'),
        id: mapValueOfType<String>(json, r'id'),
        input: mapValueOfType<Object>(json, r'input'),
        metadata: mapCastOfType<String, Object>(json, r'metadata') ?? const {},
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<ItemReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ItemReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ItemReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ItemReq> mapFromJson(dynamic json) {
    final map = <String, ItemReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ItemReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ItemReq-objects as value to a dart map
  static Map<String, List<ItemReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ItemReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ItemReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

