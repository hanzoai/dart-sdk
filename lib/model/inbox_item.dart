//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InboxItem {
  /// Returns a new [InboxItem] instance.
  InboxItem({
    this.category,
    this.confidence,
    this.createdAt,
    this.extracted,
    this.filename,
    this.id,
    this.status,
    this.vendor,
  });
  /// Category is the expense account the scanner proposed, as a chart number — a PROPOSAL, not a posting: nothing is booked until it is accepted.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Confidence is how sure the scanner is of that reading, and is the signal for whether a person needs to check it before it is booked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confidence;

  /// CreatedAt is when the document was uploaded.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdAt;

  /// Extracted is what the scanner read off the document. Absent until it has been scanned, so its absence is \"not read yet\", never \"nothing on it\".
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Extracted? extracted;

  /// Filename is the name the document was uploaded under, for a person to recognise it by. It is not part of the item's identity.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? filename;

  /// ID is the CONTENT HASH of the uploaded bytes, which is what makes the queue idempotent: re-uploading the same document returns this item rather than adding a second one. It is also the id the scan of this document carries.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  /// Status is where the document is in the queue — unsorted until the scanner has read it, and thereafter whether it is waiting on a person or has been booked.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  /// Vendor is the supplier the scanner identified, surfaced beside the item so a queue renders without opening each document.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InboxItem &&
    other.category == category &&
    other.confidence == confidence &&
    other.createdAt == createdAt &&
    other.extracted == extracted &&
    other.filename == filename &&
    other.id == id &&
    other.status == status &&
    other.vendor == vendor;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (extracted == null ? 0 : extracted!.hashCode) +
    (filename == null ? 0 : filename!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (status == null ? 0 : status!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode);

  @override
  String toString() => 'InboxItem[category=$category, confidence=$confidence, createdAt=$createdAt, extracted=$extracted, filename=$filename, id=$id, status=$status, vendor=$vendor]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.confidence != null) {
      json[r'confidence'] = this.confidence;
    } else {
      json[r'confidence'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
    }
    if (this.extracted != null) {
      json[r'extracted'] = this.extracted;
    } else {
      json[r'extracted'] = null;
    }
    if (this.filename != null) {
      json[r'filename'] = this.filename;
    } else {
      json[r'filename'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    return json;
  }

  /// Returns a new [InboxItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InboxItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InboxItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InboxItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InboxItem(
        category: mapValueOfType<String>(json, r'category'),
        confidence: mapValueOfType<String>(json, r'confidence'),
        createdAt: mapValueOfType<String>(json, r'createdAt'),
        extracted: Extracted.fromJson(json[r'extracted']),
        filename: mapValueOfType<String>(json, r'filename'),
        id: mapValueOfType<String>(json, r'id'),
        status: mapValueOfType<String>(json, r'status'),
        vendor: mapValueOfType<String>(json, r'vendor'),
      );
    }
    return null;
  }

  static List<InboxItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InboxItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InboxItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InboxItem> mapFromJson(dynamic json) {
    final map = <String, InboxItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InboxItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InboxItem-objects as value to a dart map
  static Map<String, List<InboxItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InboxItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InboxItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

