//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ScanDraft {
  /// Returns a new [ScanDraft] instance.
  ScanDraft({
    this.balanced,
    this.category,
    this.confidence,
    this.extracted,
    this.questions = const [],
    this.scanId,
    this.vendor,
    this.voucher,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? balanced;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? confidence;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Extracted? extracted;

  List<Question> questions;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? scanId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? vendor;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Voucher? voucher;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ScanDraft &&
    other.balanced == balanced &&
    other.category == category &&
    other.confidence == confidence &&
    other.extracted == extracted &&
    _deepEquality.equals(other.questions, questions) &&
    other.scanId == scanId &&
    other.vendor == vendor &&
    other.voucher == voucher;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (balanced == null ? 0 : balanced!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (confidence == null ? 0 : confidence!.hashCode) +
    (extracted == null ? 0 : extracted!.hashCode) +
    (questions.hashCode) +
    (scanId == null ? 0 : scanId!.hashCode) +
    (vendor == null ? 0 : vendor!.hashCode) +
    (voucher == null ? 0 : voucher!.hashCode);

  @override
  String toString() => 'ScanDraft[balanced=$balanced, category=$category, confidence=$confidence, extracted=$extracted, questions=$questions, scanId=$scanId, vendor=$vendor, voucher=$voucher]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.balanced != null) {
      json[r'balanced'] = this.balanced;
    } else {
      json[r'balanced'] = null;
    }
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
    if (this.extracted != null) {
      json[r'extracted'] = this.extracted;
    } else {
      json[r'extracted'] = null;
    }
      json[r'questions'] = this.questions;
    if (this.scanId != null) {
      json[r'scanId'] = this.scanId;
    } else {
      json[r'scanId'] = null;
    }
    if (this.vendor != null) {
      json[r'vendor'] = this.vendor;
    } else {
      json[r'vendor'] = null;
    }
    if (this.voucher != null) {
      json[r'voucher'] = this.voucher;
    } else {
      json[r'voucher'] = null;
    }
    return json;
  }

  /// Returns a new [ScanDraft] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ScanDraft? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ScanDraft[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ScanDraft[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ScanDraft(
        balanced: mapValueOfType<bool>(json, r'balanced'),
        category: mapValueOfType<String>(json, r'category'),
        confidence: mapValueOfType<String>(json, r'confidence'),
        extracted: Extracted.fromJson(json[r'extracted']),
        questions: Question.listFromJson(json[r'questions']),
        scanId: mapValueOfType<String>(json, r'scanId'),
        vendor: mapValueOfType<String>(json, r'vendor'),
        voucher: Voucher.fromJson(json[r'voucher']),
      );
    }
    return null;
  }

  static List<ScanDraft> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ScanDraft>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ScanDraft.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ScanDraft> mapFromJson(dynamic json) {
    final map = <String, ScanDraft>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ScanDraft.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ScanDraft-objects as value to a dart map
  static Map<String, List<ScanDraft>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ScanDraft>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ScanDraft.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

