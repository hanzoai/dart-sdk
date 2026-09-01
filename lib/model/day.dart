//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Day {
  /// Returns a new [Day] instance.
  Day({
    this.close,
    this.count,
    this.date,
    this.high,
    this.locked,
    this.low,
    this.open,
    this.price,
    this.volume,
  });
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? close;

  /// Count is transactions in the day, where the table keeps one.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Date is the day's start, unix seconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? date;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? high;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? locked;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? low;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? open;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Day &&
    other.close == close &&
    other.count == count &&
    other.date == date &&
    other.high == high &&
    other.locked == locked &&
    other.low == low &&
    other.open == open &&
    other.price == price &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (close == null ? 0 : close!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (date == null ? 0 : date!.hashCode) +
    (high == null ? 0 : high!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (low == null ? 0 : low!.hashCode) +
    (open == null ? 0 : open!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'Day[close=$close, count=$count, date=$date, high=$high, locked=$locked, low=$low, open=$open, price=$price, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.close != null) {
      json[r'close'] = this.close;
    } else {
      json[r'close'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.date != null) {
      json[r'date'] = this.date;
    } else {
      json[r'date'] = null;
    }
    if (this.high != null) {
      json[r'high'] = this.high;
    } else {
      json[r'high'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.low != null) {
      json[r'low'] = this.low;
    } else {
      json[r'low'] = null;
    }
    if (this.open != null) {
      json[r'open'] = this.open;
    } else {
      json[r'open'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [Day] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Day? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Day[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Day[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Day(
        close: mapValueOfType<String>(json, r'close'),
        count: mapValueOfType<int>(json, r'count'),
        date: mapValueOfType<int>(json, r'date'),
        high: mapValueOfType<String>(json, r'high'),
        locked: mapValueOfType<String>(json, r'locked'),
        low: mapValueOfType<String>(json, r'low'),
        open: mapValueOfType<String>(json, r'open'),
        price: mapValueOfType<String>(json, r'price'),
        volume: mapValueOfType<String>(json, r'volume'),
      );
    }
    return null;
  }

  static List<Day> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Day>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Day.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Day> mapFromJson(dynamic json) {
    final map = <String, Day>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Day.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Day-objects as value to a dart map
  static Map<String, List<Day>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Day>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Day.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

