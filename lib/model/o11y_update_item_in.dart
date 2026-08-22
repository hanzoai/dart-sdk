//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yUpdateItemIn {
  /// Returns a new [O11yUpdateItemIn] instance.
  O11yUpdateItemIn({
    this.assignee,
    this.id,
    this.itemId,
    this.status,
  });
  /// Assignee replaces the reviewer this item is for, up to 512 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? assignee;

  /// ID is the annotation queue the item belongs to, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// ItemID is the item to update, from the path.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? itemId;

  /// Status is the item's new review state: PENDING or COMPLETED. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yUpdateItemIn &&
    other.assignee == assignee &&
    other.id == id &&
    other.itemId == itemId &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (assignee == null ? 0 : assignee!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (itemId == null ? 0 : itemId!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'O11yUpdateItemIn[assignee=$assignee, id=$id, itemId=$itemId, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.assignee != null) {
      json[r'assignee'] = this.assignee;
    } else {
      json[r'assignee'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.itemId != null) {
      json[r'itemId'] = this.itemId;
    } else {
      json[r'itemId'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [O11yUpdateItemIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yUpdateItemIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yUpdateItemIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yUpdateItemIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yUpdateItemIn(
        assignee: mapValueOfType<String>(json, r'assignee'),
        id: mapValueOfType<String>(json, r'id'),
        itemId: mapValueOfType<String>(json, r'itemId'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<O11yUpdateItemIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yUpdateItemIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yUpdateItemIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yUpdateItemIn> mapFromJson(dynamic json) {
    final map = <String, O11yUpdateItemIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yUpdateItemIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yUpdateItemIn-objects as value to a dart map
  static Map<String, List<O11yUpdateItemIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yUpdateItemIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yUpdateItemIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

