//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yPagination {
  /// Returns a new [O11yPagination] instance.
  O11yPagination({
    this.page,
    this.pages,
    this.perPage,
    this.total,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? page;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pages;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? perPage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yPagination &&
    other.page == page &&
    other.pages == pages &&
    other.perPage == perPage &&
    other.total == total;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (page == null ? 0 : page!.hashCode) +
    (pages == null ? 0 : pages!.hashCode) +
    (perPage == null ? 0 : perPage!.hashCode) +
    (total == null ? 0 : total!.hashCode);

  @override
  String toString() => 'O11yPagination[page=$page, pages=$pages, perPage=$perPage, total=$total]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.page != null) {
      json[r'page'] = this.page;
    } else {
      json[r'page'] = null;
    }
    if (this.pages != null) {
      json[r'pages'] = this.pages;
    } else {
      json[r'pages'] = null;
    }
    if (this.perPage != null) {
      json[r'per_page'] = this.perPage;
    } else {
      json[r'per_page'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    return json;
  }

  /// Returns a new [O11yPagination] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yPagination? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yPagination[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yPagination[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yPagination(
        page: mapValueOfType<int>(json, r'page'),
        pages: mapValueOfType<int>(json, r'pages'),
        perPage: mapValueOfType<int>(json, r'per_page'),
        total: mapValueOfType<int>(json, r'total'),
      );
    }
    return null;
  }

  static List<O11yPagination> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yPagination>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yPagination.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yPagination> mapFromJson(dynamic json) {
    final map = <String, O11yPagination>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yPagination.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yPagination-objects as value to a dart map
  static Map<String, List<O11yPagination>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yPagination>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yPagination.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

