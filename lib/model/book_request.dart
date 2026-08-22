//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BookRequest {
  /// Returns a new [BookRequest] instance.
  BookRequest({
    this.overrideDuplicate,
    this.scanId,
    this.voucher,
  });
  /// Override books this bill even when one of the SAME economic identity (vendor, total, issue date) already posted — the explicit human confirmation that a same-looking bill is a genuine second spend, not the same receipt re-scanned.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? overrideDuplicate;

  /// ScanID is the scanned document's file hash, as GET /v1/books/inbox and the scan draft report it. It is the idempotency key: re-booking the same scan writes nothing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scanId;

  /// Voucher is the reviewed voucher to post. Its source is FORCED to (scan, scanId) server-side, so it can never be booked under another source's key.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Voucher? voucher;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BookRequest &&
    other.overrideDuplicate == overrideDuplicate &&
    other.scanId == scanId &&
    other.voucher == voucher;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (overrideDuplicate == null ? 0 : overrideDuplicate!.hashCode) +
    (scanId == null ? 0 : scanId!.hashCode) +
    (voucher == null ? 0 : voucher!.hashCode);

  @override
  String toString() => 'BookRequest[overrideDuplicate=$overrideDuplicate, scanId=$scanId, voucher=$voucher]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.overrideDuplicate != null) {
      json[r'override'] = this.overrideDuplicate;
    } else {
      json[r'override'] = null;
    }
    if (this.scanId != null) {
      json[r'scanId'] = this.scanId;
    } else {
      json[r'scanId'] = null;
    }
    if (this.voucher != null) {
      json[r'voucher'] = this.voucher;
    } else {
      json[r'voucher'] = null;
    }
    return json;
  }

  /// Returns a new [BookRequest] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BookRequest? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BookRequest[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BookRequest[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BookRequest(
        overrideDuplicate: mapValueOfType<bool>(json, r'override'),
        scanId: mapValueOfType<String>(json, r'scanId'),
        voucher: Voucher.fromJson(json[r'voucher']),
      );
    }
    return null;
  }

  static List<BookRequest> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BookRequest>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BookRequest.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BookRequest> mapFromJson(dynamic json) {
    final map = <String, BookRequest>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BookRequest.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BookRequest-objects as value to a dart map
  static Map<String, List<BookRequest>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BookRequest>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BookRequest.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

