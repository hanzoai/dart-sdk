//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class MarketItem {
  /// Returns a new [MarketItem] instance.
  MarketItem({
    this.activated,
    this.category,
    this.description,
    this.dispatchable,
    this.inputSchema,
    this.installed,
    this.name,
    this.price,
    this.source_,
    this.title,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? activated;

  /// Category is that same listing's grouping. Free text chosen by the publisher, absent when there is no public listing or the publisher left it blank.
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
  String? description;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? dispatchable;

  Object? inputSchema;

  /// Installed is whether the tool is activated for THIS caller's (org, project): the same bit as Activated, under the shop's name for it, which install and uninstall are the writes for. It is per caller, so one listing reads installed for one org and not for another.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? installed;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Price? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Title is the shop-window name, painted over the registry Name from the CHEAPEST public listing for this tool — several orgs may list the same one, and the row shown is the one a buyer would pay. Absent when no org has listed the tool publicly: that row is a plain capability, not an offer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? title;

  @override
  bool operator ==(Object other) => identical(this, other) || other is MarketItem &&
    other.activated == activated &&
    other.category == category &&
    other.description == description &&
    other.dispatchable == dispatchable &&
    other.inputSchema == inputSchema &&
    other.installed == installed &&
    other.name == name &&
    other.price == price &&
    other.source_ == source_ &&
    other.title == title;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (activated == null ? 0 : activated!.hashCode) +
    (category == null ? 0 : category!.hashCode) +
    (description == null ? 0 : description!.hashCode) +
    (dispatchable == null ? 0 : dispatchable!.hashCode) +
    (inputSchema == null ? 0 : inputSchema!.hashCode) +
    (installed == null ? 0 : installed!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (title == null ? 0 : title!.hashCode);

  @override
  String toString() => 'MarketItem[activated=$activated, category=$category, description=$description, dispatchable=$dispatchable, inputSchema=$inputSchema, installed=$installed, name=$name, price=$price, source_=$source_, title=$title]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.activated != null) {
      json[r'activated'] = this.activated;
    } else {
      json[r'activated'] = null;
    }
    if (this.category != null) {
      json[r'category'] = this.category;
    } else {
      json[r'category'] = null;
    }
    if (this.description != null) {
      json[r'description'] = this.description;
    } else {
      json[r'description'] = null;
    }
    if (this.dispatchable != null) {
      json[r'dispatchable'] = this.dispatchable;
    } else {
      json[r'dispatchable'] = null;
    }
    if (this.inputSchema != null) {
      json[r'inputSchema'] = this.inputSchema;
    } else {
      json[r'inputSchema'] = null;
    }
    if (this.installed != null) {
      json[r'installed'] = this.installed;
    } else {
      json[r'installed'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.title != null) {
      json[r'title'] = this.title;
    } else {
      json[r'title'] = null;
    }
    return json;
  }

  /// Returns a new [MarketItem] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static MarketItem? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "MarketItem[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "MarketItem[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return MarketItem(
        activated: mapValueOfType<bool>(json, r'activated'),
        category: mapValueOfType<String>(json, r'category'),
        description: mapValueOfType<String>(json, r'description'),
        dispatchable: mapValueOfType<bool>(json, r'dispatchable'),
        inputSchema: mapValueOfType<Object>(json, r'inputSchema'),
        installed: mapValueOfType<bool>(json, r'installed'),
        name: mapValueOfType<String>(json, r'name'),
        price: Price.fromJson(json[r'price']),
        source_: mapValueOfType<String>(json, r'source'),
        title: mapValueOfType<String>(json, r'title'),
      );
    }
    return null;
  }

  static List<MarketItem> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <MarketItem>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = MarketItem.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, MarketItem> mapFromJson(dynamic json) {
    final map = <String, MarketItem>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = MarketItem.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of MarketItem-objects as value to a dart map
  static Map<String, List<MarketItem>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<MarketItem>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = MarketItem.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

