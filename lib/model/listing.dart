//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Listing {
  /// Returns a new [Listing] instance.
  Listing({
    this.category,
    this.createdAt,
    this.currency,
    this.description,
    this.id,
    this.price,
    this.public,
    this.publisherOrg,
    this.recipient,
    this.title,
    this.tool,
  });
  /// Category groups the listing in the shop window. Free text — no vocabulary, nothing validates it — and unlike Description it is silently cut to 4096 bytes rather than refused. Empty means ungrouped.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? category;

  /// CreatedAt is when the listing was published, in Unix SECONDS, minted at insert. Every listing read orders by it descending, so it is the shop's ordering key as well as its age.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? createdAt;

  /// Currency is the ISO 4217 code Price is quoted in; Create defaults it to \"USD\" when the publisher names none. It is a LABEL that travels to the shop window: publish parses Price with money.ParseUSD and the x402 terms carry no currency, so another code here changes what is displayed, not what is charged.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  /// Description is the long copy. Publish REFUSES one past 4096 bytes rather than truncating it, so what is stored is what was sent; empty is allowed.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? description;

  /// ID is the listing's id, minted here as \"lst_\" + 16 hex characters. A publisher cannot choose it: Create overwrites whatever arrives. It is unique within PublisherOrg (the primary key is the pair), and it is the path segment DELETE /v1/marketplace/listings/:id takes.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? id;

  Object? price;

  /// Public is whether other orgs can discover the listing. It also decides ENFORCEMENT: only public rows reach the price table, so a private listing with a price charges nobody. False leaves the row visible to its publisher alone.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? public;

  /// PublisherOrg is the org that published the listing, taken from the validated principal and never off the wire. It is also the PAYEE org — Recipient is resolved inside it — and the isolation key: a publisher reads and deletes only rows carrying its own org.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? publisherOrg;

  /// seller payout WALLET ID, in PublisherOrg.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? recipient;

  /// Title is the shop-window name, required and refused past 200 bytes. It is what discovery paints over the tool's registry name.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  /// Tool is the registry name of the offered capability, in the flat fleet-wide tool namespace. It resolved in the publisher's own scope at publish time, so no listing advertises a capability that did not exist; it is also the key the price table looks a dispatch up by.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? tool;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Listing &&
    other.category == category &&
    other.createdAt == createdAt &&
    other.currency == currency &&
    other.description == description &&
    other.id == id &&
    other.price == price &&
    other.public == public &&
    other.publisherOrg == publisherOrg &&
    other.recipient == recipient &&
    other.title == title &&
    other.tool == tool;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (category == null ? 0 : category!.hashCode) +
    (createdAt == null ? 0 : createdAt!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (public == null ? 0 : public!.hashCode) +
    (publisherOrg == null ? 0 : publisherOrg!.hashCode) +
    (recipient == null ? 0 : recipient!.hashCode) +
    (title == null ? 0 : title!.hashCode) +
    (tool == null ? 0 : tool!.hashCode);

  @override
  String toString() => 'Listing[category=$category, createdAt=$createdAt, currency=$currency, description=$description, id=$id, price=$price, public=$public, publisherOrg=$publisherOrg, recipient=$recipient, title=$title, tool=$tool]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.createdAt != null) {
      json[r'createdAt'] = this.createdAt;
    } else {
      json[r'createdAt'] = null;
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
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
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
    if (this.publisherOrg != null) {
      json[r'publisherOrg'] = this.publisherOrg;
    } else {
      json[r'publisherOrg'] = null;
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

  /// Returns a new [Listing] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Listing? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Listing[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Listing[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Listing(
        category: mapValueOfType<String>(json, r'category'),
        createdAt: mapValueOfType<int>(json, r'createdAt'),
        currency: mapValueOfType<String>(json, r'currency'),
        description: mapValueOfType<String>(json, r'description'),
        id: mapValueOfType<String>(json, r'id'),
        price: mapValueOfType<Object>(json, r'price'),
        public: mapValueOfType<bool>(json, r'public'),
        publisherOrg: mapValueOfType<String>(json, r'publisherOrg'),
        recipient: mapValueOfType<String>(json, r'recipient'),
        title: mapValueOfType<String>(json, r'title'),
        tool: mapValueOfType<String>(json, r'tool'),
      );
    }
    return null;
  }

  static List<Listing> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Listing>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Listing.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Listing> mapFromJson(dynamic json) {
    final map = <String, Listing>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Listing.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Listing-objects as value to a dart map
  static Map<String, List<Listing>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Listing>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Listing.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

