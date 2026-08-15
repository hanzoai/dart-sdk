//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class InvoiceRow {
  /// Returns a new [InvoiceRow] instance.
  InvoiceRow({
    this.amountCents,
    this.currency,
    this.display,
    this.due,
    this.id,
    this.issued,
    this.number,
    this.org,
    this.status,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? display;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? due;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? issued;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? number;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? org;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is InvoiceRow &&
    other.amountCents == amountCents &&
    other.currency == currency &&
    other.display == display &&
    other.due == due &&
    other.id == id &&
    other.issued == issued &&
    other.number == number &&
    other.org == org &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (display == null ? 0 : display!.hashCode) +
    (due == null ? 0 : due!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (issued == null ? 0 : issued!.hashCode) +
    (number == null ? 0 : number!.hashCode) +
    (org == null ? 0 : org!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'InvoiceRow[amountCents=$amountCents, currency=$currency, display=$display, due=$due, id=$id, issued=$issued, number=$number, org=$org, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.display != null) {
      json[r'display'] = this.display;
    } else {
      json[r'display'] = null;
    }
    if (this.due != null) {
      json[r'due'] = this.due;
    } else {
      json[r'due'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.issued != null) {
      json[r'issued'] = this.issued;
    } else {
      json[r'issued'] = null;
    }
    if (this.number != null) {
      json[r'number'] = this.number;
    } else {
      json[r'number'] = null;
    }
    if (this.org != null) {
      json[r'org'] = this.org;
    } else {
      json[r'org'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [InvoiceRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static InvoiceRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "InvoiceRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "InvoiceRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return InvoiceRow(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        display: mapValueOfType<String>(json, r'display'),
        due: mapValueOfType<String>(json, r'due'),
        id: mapValueOfType<String>(json, r'id'),
        issued: mapValueOfType<String>(json, r'issued'),
        number: mapValueOfType<String>(json, r'number'),
        org: mapValueOfType<String>(json, r'org'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<InvoiceRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <InvoiceRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = InvoiceRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, InvoiceRow> mapFromJson(dynamic json) {
    final map = <String, InvoiceRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = InvoiceRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of InvoiceRow-objects as value to a dart map
  static Map<String, List<InvoiceRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<InvoiceRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = InvoiceRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

