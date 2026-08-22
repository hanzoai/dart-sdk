//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Payout {
  /// Returns a new [Payout] instance.
  Payout({
    this.amount,
    this.arrivalDate,
    this.created,
    this.currency,
    this.description,
    this.destinationId,
    this.destinationType,
    this.failureCode,
    this.failureMessage,
    this.id,
    this.metadata,
    this.providerRef,
    this.status,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? arrivalDate;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? created;

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
  String? destinationId;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? destinationType;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureCode;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? failureMessage;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? metadata;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? providerRef;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? status;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Payout &&
    other.amount == amount &&
    other.arrivalDate == arrivalDate &&
    other.created == created &&
    other.currency == currency &&
    other.description == description &&
    other.destinationId == destinationId &&
    other.destinationType == destinationType &&
    other.failureCode == failureCode &&
    other.failureMessage == failureMessage &&
    other.id == id &&
    other.metadata == metadata &&
    other.providerRef == providerRef &&
    other.status == status;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amount == null ? 0 : amount!.hashCode) +
    (arrivalDate == null ? 0 : arrivalDate!.hashCode) +
    (created == null ? 0 : created!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (destinationId == null ? 0 : destinationId!.hashCode) +
    (destinationType == null ? 0 : destinationType!.hashCode) +
    (failureCode == null ? 0 : failureCode!.hashCode) +
    (failureMessage == null ? 0 : failureMessage!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (metadata == null ? 0 : metadata!.hashCode) +
    (providerRef == null ? 0 : providerRef!.hashCode) +
    (status == null ? 0 : status!.hashCode);

  @override
  String toString() => 'Payout[amount=$amount, arrivalDate=$arrivalDate, created=$created, currency=$currency, description=$description, destinationId=$destinationId, destinationType=$destinationType, failureCode=$failureCode, failureMessage=$failureMessage, id=$id, metadata=$metadata, providerRef=$providerRef, status=$status]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amount != null) {
      json[r'amount'] = this.amount;
    } else {
      json[r'amount'] = null;
    }
    if (this.arrivalDate != null) {
      json[r'arrivalDate'] = this.arrivalDate;
    } else {
      json[r'arrivalDate'] = null;
    }
    if (this.created != null) {
      json[r'created'] = this.created;
    } else {
      json[r'created'] = null;
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
    if (this.destinationId != null) {
      json[r'destinationId'] = this.destinationId;
    } else {
      json[r'destinationId'] = null;
    }
    if (this.destinationType != null) {
      json[r'destinationType'] = this.destinationType;
    } else {
      json[r'destinationType'] = null;
    }
    if (this.failureCode != null) {
      json[r'failureCode'] = this.failureCode;
    } else {
      json[r'failureCode'] = null;
    }
    if (this.failureMessage != null) {
      json[r'failureMessage'] = this.failureMessage;
    } else {
      json[r'failureMessage'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.metadata != null) {
      json[r'metadata'] = this.metadata;
    } else {
      json[r'metadata'] = null;
    }
    if (this.providerRef != null) {
      json[r'providerRef'] = this.providerRef;
    } else {
      json[r'providerRef'] = null;
    }
    if (this.status != null) {
      json[r'status'] = this.status;
    } else {
      json[r'status'] = null;
    }
    return json;
  }

  /// Returns a new [Payout] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Payout? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Payout[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Payout[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Payout(
        amount: mapValueOfType<int>(json, r'amount'),
        arrivalDate: mapValueOfType<String>(json, r'arrivalDate'),
        created: mapValueOfType<String>(json, r'created'),
        currency: mapValueOfType<String>(json, r'currency'),
        description: mapValueOfType<String>(json, r'description'),
        destinationId: mapValueOfType<String>(json, r'destinationId'),
        destinationType: mapValueOfType<String>(json, r'destinationType'),
        failureCode: mapValueOfType<String>(json, r'failureCode'),
        failureMessage: mapValueOfType<String>(json, r'failureMessage'),
        id: mapValueOfType<String>(json, r'id'),
        metadata: mapValueOfType<Object>(json, r'metadata'),
        providerRef: mapValueOfType<String>(json, r'providerRef'),
        status: mapValueOfType<String>(json, r'status'),
      );
    }
    return null;
  }

  static List<Payout> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Payout>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Payout.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Payout> mapFromJson(dynamic json) {
    final map = <String, Payout>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Payout.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Payout-objects as value to a dart map
  static Map<String, List<Payout>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Payout>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Payout.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

