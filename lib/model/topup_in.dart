//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class TopupIn {
  /// Returns a new [TopupIn] instance.
  TopupIn({
    this.amountCents,
    this.currency,
    this.paymentMethodId,
    this.sourceId,
  });
  /// AmountCents is how much to charge, in cents of Currency. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? amountCents;

  /// Currency is the ISO-4217 code to charge in. Empty takes the deployment's own default.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// MethodID names a card the subject already saved, for the saved-card endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? paymentMethodId;

  /// SourceID is a single-use card token from the payment form, for the token endpoint. It is vaulted as part of the charge, so a caller never holds card numbers and this service never sees one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? sourceId;

  @override
  bool operator ==(Object other) => identical(this, other) || other is TopupIn &&
    other.amountCents == amountCents &&
    other.currency == currency &&
    other.paymentMethodId == paymentMethodId &&
    other.sourceId == sourceId;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amountCents == null ? 0 : amountCents!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (paymentMethodId == null ? 0 : paymentMethodId!.hashCode) +
    (sourceId == null ? 0 : sourceId!.hashCode);

  @override
  String toString() => 'TopupIn[amountCents=$amountCents, currency=$currency, paymentMethodId=$paymentMethodId, sourceId=$sourceId]';

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
    if (this.paymentMethodId != null) {
      json[r'paymentMethodId'] = this.paymentMethodId;
    } else {
      json[r'paymentMethodId'] = null;
    }
    if (this.sourceId != null) {
      json[r'sourceId'] = this.sourceId;
    } else {
      json[r'sourceId'] = null;
    }
    return json;
  }

  /// Returns a new [TopupIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static TopupIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "TopupIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "TopupIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return TopupIn(
        amountCents: mapValueOfType<int>(json, r'amountCents'),
        currency: mapValueOfType<String>(json, r'currency'),
        paymentMethodId: mapValueOfType<String>(json, r'paymentMethodId'),
        sourceId: mapValueOfType<String>(json, r'sourceId'),
      );
    }
    return null;
  }

  static List<TopupIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <TopupIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = TopupIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, TopupIn> mapFromJson(dynamic json) {
    final map = <String, TopupIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = TopupIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of TopupIn-objects as value to a dart map
  static Map<String, List<TopupIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<TopupIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = TopupIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

