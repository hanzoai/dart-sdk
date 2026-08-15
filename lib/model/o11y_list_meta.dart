//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yListMeta {
  /// Returns a new [O11yListMeta] instance.
  O11yListMeta({
    this.limit,
    this.page,
    this.totalItems,
    this.totalPages,
  });

  /// Limit is how many rows one page holds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? limit;

  /// Page is the 1-based page this response is.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  /// TotalItems is how many rows match in total.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalItems;

  /// TotalPages is ceil(totalItems/limit), at least 1.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalPages;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yListMeta &&
    other.limit == limit &&
    other.page == page &&
    other.totalItems == totalItems &&
    other.totalPages == totalPages;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (limit == null ? 0 : limit!.hashCode) +
    (page == null ? 0 : page!.hashCode) +
    (totalItems == null ? 0 : totalItems!.hashCode) +
    (totalPages == null ? 0 : totalPages!.hashCode);

  @override
  String toString() => 'O11yListMeta[limit=$limit, page=$page, totalItems=$totalItems, totalPages=$totalPages]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.limit != null) {
      json[r'limit'] = this.limit;
    } else {
      json[r'limit'] = null;
    }
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.totalItems != null) {
      json[r'totalItems'] = this.totalItems;
    } else {
      json[r'totalItems'] = null;
    }
    if (this.totalPages != null) {
      json[r'totalPages'] = this.totalPages;
    } else {
      json[r'totalPages'] = null;
    }
    return json;
  }

  /// Returns a new [O11yListMeta] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yListMeta? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yListMeta[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yListMeta[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yListMeta(
        limit: mapValueOfType<int>(json, r'limit'),
        page: mapValueOfType<int>(json, r'page'),
        totalItems: mapValueOfType<int>(json, r'totalItems'),
        totalPages: mapValueOfType<int>(json, r'totalPages'),
      );
    }
    return null;
  }

  static List<O11yListMeta> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yListMeta>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yListMeta.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yListMeta> mapFromJson(dynamic json) {
    final map = <String, O11yListMeta>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yListMeta.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yListMeta-objects as value to a dart map
  static Map<String, List<O11yListMeta>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yListMeta>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yListMeta.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

