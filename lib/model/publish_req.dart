//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class PublishReq {
  /// Returns a new [PublishReq] instance.
  PublishReq({
    this.category,
    this.currency,
    this.description,
    this.price,
    this.public,
    this.recipient,
    this.title,
    this.tool,
  });

  /// Category groups the listing in the shop window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// Currency denominates Price.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// Description is the long copy, clipped at 4096 characters.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// Price is the per-call price as a decimal USD string, exact to 18 places — \"0.0025\" is a quarter of a cent and stays one. Empty or \"0\" (the default) publishes it free; any positive price makes the listing monetized and requires Recipient.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? price;

  /// Public makes the listing discoverable by other orgs. Private otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// Recipient is the seller's payout wallet ID, in the publishing org — the wallet x402 pays. Required for a monetized listing.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipient;

  /// Title is the shop-window name, 1-200 characters. Required.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Tool is the registry name of the capability being offered. It must already resolve in the publisher's own scope — there are no phantom listings.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is PublishReq &&
    other.category == category &&
    other.currency == currency &&
    other.description == description &&
    other.price == price &&
    other.public == public &&
    other.recipient == recipient &&
    other.title == title &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'PublishReq[category=$category, currency=$currency, description=$description, price=$price, public=$public, recipient=$recipient, title=$title, tool=$tool]';

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
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.public != null) {
      json[r'public'] = this.public;
    } else {
      json[r'public'] = null;
    }
    if (this.recipient != null) {
      json[r'recipient'] = this.recipient;
    } else {
      json[r'recipient'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    if (this.tool != null) {
      json[r'tool'] = this.tool;
    } else {
      json[r'tool'] = null;
    }
    return json;
  }

  /// Returns a new [PublishReq] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static PublishReq? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "PublishReq[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "PublishReq[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return PublishReq(
        category: mapValueOfType<String>(json, r'category'),
        currency: mapValueOfType<String>(json, r'currency'),
        description: mapValueOfType<String>(json, r'description'),
        price: mapValueOfType<String>(json, r'price'),
        public: mapValueOfType<bool>(json, r'public'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        title: mapValueOfType<String>(json, r'title'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<PublishReq> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <PublishReq>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = PublishReq.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, PublishReq> mapFromJson(dynamic json) {
    final map = <String, PublishReq>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = PublishReq.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of PublishReq-objects as value to a dart map
  static Map<String, List<PublishReq>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<PublishReq>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = PublishReq.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

