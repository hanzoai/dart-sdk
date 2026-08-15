//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class BankTxnRow {
  /// Returns a new [BankTxnRow] instance.
  BankTxnRow({
    this.amountCents,
    this.connector,
    this.currency,
    this.description,
    this.direction,
    this.externalId,
    this.matchedVoucher,
    this.merchant,
    this.postedAt,
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
  String? connector;

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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? direction;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? externalId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? matchedVoucher;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? merchant;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? postedAt;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is BankTxnRow &&
    other.amountCents == amountCents &&
    other.connector == connector &&
    other.currency == currency &&
    other.description == description &&
    other.direction == direction &&
    other.externalId == externalId &&
    other.matchedVoucher == matchedVoucher &&
    other.merchant == merchant &&
    other.postedAt == postedAt &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (connector == null ? 0 : connector!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (direction == null ? 0 : direction!.hashCode) +
    (externalId == null ? 0 : externalId!.hashCode) +
    (matchedVoucher == null ? 0 : matchedVoucher!.hashCode) +
    (merchant == null ? 0 : merchant!.hashCode) +
    (postedAt == null ? 0 : postedAt!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'BankTxnRow[amountCents=$amountCents, connector=$connector, currency=$currency, description=$description, direction=$direction, externalId=$externalId, matchedVoucher=$matchedVoucher, merchant=$merchant, postedAt=$postedAt, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amountCents != null) {
      json[r'amountCents'] = this.amountCents;
    } else {
      json[r'amountCents'] = null;
    }
    if (this.connector != null) {
      json[r'connector'] = this.connector;
    } else {
      json[r'connector'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.direction != null) {
      json[r'direction'] = this.direction;
    } else {
      json[r'direction'] = null;
    }
    if (this.externalId != null) {
      json[r'externalId'] = this.externalId;
    } else {
      json[r'externalId'] = null;
    }
    if (this.matchedVoucher != null) {
      json[r'matchedVoucher'] = this.matchedVoucher;
    } else {
      json[r'matchedVoucher'] = null;
    }
    if (this.merchant != null) {
      json[r'merchant'] = this.merchant;
    } else {
      json[r'merchant'] = null;
    }
    if (this.postedAt != null) {
      json[r'postedAt'] = this.postedAt;
    } else {
      json[r'postedAt'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [BankTxnRow] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static BankTxnRow? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "BankTxnRow[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "BankTxnRow[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return BankTxnRow(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        connector: mapValueOfType<String>(json, r'connector'),
        currency: mapValueOfType<String>(json, r'currency'),
        description: mapValueOfType<String>(json, r'description'),
        direction: mapValueOfType<String>(json, r'direction'),
        externalId: mapValueOfType<String>(json, r'externalId'),
        matchedVoucher: mapValueOfType<String>(json, r'matchedVoucher'),
        merchant: mapValueOfType<String>(json, r'merchant'),
        postedAt: mapValueOfType<String>(json, r'postedAt'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<BankTxnRow> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <BankTxnRow>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = BankTxnRow.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, BankTxnRow> mapFromJson(dynamic json) {
    final map = <String, BankTxnRow>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = BankTxnRow.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of BankTxnRow-objects as value to a dart map
  static Map<String, List<BankTxnRow>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<BankTxnRow>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = BankTxnRow.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

