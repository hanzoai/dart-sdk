//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Count {
  /// Returns a new [Count] instance.
  Count({
    this.chatCount,
    this.currency,
    this.date,
    this.messageCount,
    this.price,
    this.tokenCount,
    this.userCount,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? chatCount;

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
  String? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? messageCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenCount;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? userCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Count &&
    other.chatCount == chatCount &&
    other.currency == currency &&
    other.date == date &&
    other.messageCount == messageCount &&
    other.price == price &&
    other.tokenCount == tokenCount &&
    other.userCount == userCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (chatCount == null ? 0 : chatCount!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (messageCount == null ? 0 : messageCount!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (tokenCount == null ? 0 : tokenCount!.hashCode) +
    (userCount == null ? 0 : userCount!.hashCode);

  @override
  String toString() => 'Count[chatCount=$chatCount, currency=$currency, date=$date, messageCount=$messageCount, price=$price, tokenCount=$tokenCount, userCount=$userCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.chatCount != null) {
      json[r'chatCount'] = this.chatCount;
    } else {
      json[r'chatCount'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.messageCount != null) {
      json[r'messageCount'] = this.messageCount;
    } else {
      json[r'messageCount'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.tokenCount != null) {
      json[r'tokenCount'] = this.tokenCount;
    } else {
      json[r'tokenCount'] = null;
    }
    if (this.userCount != null) {
      json[r'userCount'] = this.userCount;
    } else {
      json[r'userCount'] = null;
    }
    return json;
  }

  /// Returns a new [Count] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Count? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Count[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Count[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Count(
        chatCount: mapValueOfType<int>(json, r'chatCount'),
        currency: mapValueOfType<String>(json, r'currency'),
        date: mapValueOfType<String>(json, r'date'),
        messageCount: mapValueOfType<int>(json, r'messageCount'),
        price: num.parse('${json[r'price']}'),
        tokenCount: mapValueOfType<int>(json, r'tokenCount'),
        userCount: mapValueOfType<int>(json, r'userCount'),
      );
    }
    return null;
  }

  static List<Count> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Count>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Count.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Count> mapFromJson(dynamic json) {
    final map = <String, Count>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Count.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Count-objects as value to a dart map
  static Map<String, List<Count>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Count>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Count.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

