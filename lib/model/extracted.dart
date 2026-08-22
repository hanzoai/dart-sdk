//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Extracted {
  /// Returns a new [Extracted] instance.
  Extracted({
    this.category,
    this.currency,
    this.issuedAt,
    this.lineItems = const [],
    this.merchant,
    this.note,
    this.taxCents,
    this.totalCents,
  });
  /// Category is the expense bucket the SCANNER guessed, as a slug — a hint only. Vendor rules override it whenever they know better, so this is the model's reading and not the account the entry will land on.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Currency is the ISO code the document is denominated in.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// IssuedAt is the document's OWN date as YYYY-MM-DD — when the bill was issued, which is not when it was uploaded or when it will post.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issuedAt;

  /// LineItems are the individual lines read off the document, where it had any. They need not sum to totalCents: a document may carry lines the scanner could not read, and the total is taken from the total.
  List<LineItem> lineItems;

  /// Merchant is the supplier as printed on the document.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? merchant;

  /// Note is anything else worth carrying from the document that has no field of its own.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? note;

  /// TaxCents is how much of that total is tax, in cents. It is part of totalCents, not additional to it.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? taxCents;

  /// TotalCents is the document total in whole cents, tax INCLUDED.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? totalCents;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Extracted &&
    other.category == category &&
    other.currency == currency &&
    other.issuedAt == issuedAt &&
    _deepEquality.equals(other.lineItems, lineItems) &&
    other.merchant == merchant &&
    other.note == note &&
    other.taxCents == taxCents &&
    other.totalCents == totalCents;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (issuedAt == null ? 0 : issuedAt!.hashCode) +
    (lineItems.hashCode) +
    (merchant == null ? 0 : merchant!.hashCode) +
    (note == null ? 0 : note!.hashCode) +
    (taxCents == null ? 0 : taxCents!.hashCode) +
    (totalCents == null ? 0 : totalCents!.hashCode);

  @override
  String toString() => 'Extracted[category=$category, currency=$currency, issuedAt=$issuedAt, lineItems=$lineItems, merchant=$merchant, note=$note, taxCents=$taxCents, totalCents=$totalCents]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.issuedAt != null) {
      json[r'issuedAt'] = this.issuedAt;
    } else {
      json[r'issuedAt'] = null;
    }
      json[r'lineItems'] = this.lineItems;
    if (this.merchant != null) {
      json[r'merchant'] = this.merchant;
    } else {
      json[r'merchant'] = null;
    }
    if (this.note != null) {
      json[r'note'] = this.note;
    } else {
      json[r'note'] = null;
    }
    if (this.taxCents != null) {
      json[r'taxCents'] = this.taxCents;
    } else {
      json[r'taxCents'] = null;
    }
    if (this.totalCents != null) {
      json[r'totalCents'] = this.totalCents;
    } else {
      json[r'totalCents'] = null;
    }
    return json;
  }

  /// Returns a new [Extracted] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Extracted? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Extracted[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Extracted[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Extracted(
        category: mapValueOfType<String>(json, r'category'),
        currency: mapValueOfType<String>(json, r'currency'),
        issuedAt: mapValueOfType<String>(json, r'issuedAt'),
        lineItems: LineItem.listFromJson(json[r'lineItems']),
        merchant: mapValueOfType<String>(json, r'merchant'),
        note: mapValueOfType<String>(json, r'note'),
        taxCents: mapValueOfType<int>(json, r'taxCents'),
        totalCents: mapValueOfType<int>(json, r'totalCents'),
      );
    }
    return null;
  }

  static List<Extracted> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Extracted>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Extracted.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Extracted> mapFromJson(dynamic json) {
    final map = <String, Extracted>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Extracted.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Extracted-objects as value to a dart map
  static Map<String, List<Extracted>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Extracted>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Extracted.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

