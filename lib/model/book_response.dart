//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BookResponse {
  /// Returns a new [BookResponse] instance.
  BookResponse({
    this.posted,
    this.scanId,
  });

  /// Posted is true when this call wrote the voucher, false when the same scan had already booked and nothing was written.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? posted;

  /// ScanID echoes the scan that was booked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scanId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookResponse &&
    other.posted == posted &&
    other.scanId == scanId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (posted == null ? 0 : posted!.hashCode) +
    (scanId == null ? 0 : scanId!.hashCode);

  @override
  String toString() => 'BookResponse[posted=$posted, scanId=$scanId]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.posted != null) {
      json[r'posted'] = this.posted;
    } else {
      json[r'posted'] = null;
    }
    if (this.scanId != null) {
      json[r'scanId'] = this.scanId;
    } else {
      json[r'scanId'] = null;
    }
    return json;
  }

  /// Returns a new [BookResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BookResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BookResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BookResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BookResponse(
        posted: mapValueOfType<bool>(json, r'posted'),
        scanId: mapValueOfType<String>(json, r'scanId'),
      );
    }
    return null;
  }

  static List<BookResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BookResponse> mapFromJson(dynamic json) {
    final map = <String, BookResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BookResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BookResponse-objects as value to a dart map
  static Map<String, List<BookResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BookResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BookResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

