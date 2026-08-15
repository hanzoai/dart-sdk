//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Vector {
  /// Returns a new [Vector] instance.
  Vector({
    this.createdTime,
    this.currency,
    this.data = const [],
    this.dimension,
    this.displayName,
    this.file,
    this.index,
    this.name,
    this.owner,
    this.price,
    this.provider,
    this.score,
    this.store,
    this.text,
    this.tokenCount,
  });

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? createdTime;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? currency;

  List<num> data;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? dimension;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? displayName;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? file;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? index;

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
  String? owner;

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
  String? provider;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? score;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? store;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? text;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? tokenCount;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Vector &&
    other.createdTime == createdTime &&
    other.currency == currency &&
    _deepEquality.equals(other.data, data) &&
    other.dimension == dimension &&
    other.displayName == displayName &&
    other.file == file &&
    other.index == index &&
    other.name == name &&
    other.owner == owner &&
    other.price == price &&
    other.provider == provider &&
    other.score == score &&
    other.store == store &&
    other.text == text &&
    other.tokenCount == tokenCount;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (createdTime == null ? 0 : createdTime!.hashCode) +
    (currency == null ? 0 : currency!.hashCode) +
    (data.hashCode) +
    (dimension == null ? 0 : dimension!.hashCode) +
    (displayName == null ? 0 : displayName!.hashCode) +
    (file == null ? 0 : file!.hashCode) +
    (index == null ? 0 : index!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (owner == null ? 0 : owner!.hashCode) +
    (price == null ? 0 : price!.hashCode) +
    (provider == null ? 0 : provider!.hashCode) +
    (score == null ? 0 : score!.hashCode) +
    (store == null ? 0 : store!.hashCode) +
    (text == null ? 0 : text!.hashCode) +
    (tokenCount == null ? 0 : tokenCount!.hashCode);

  @override
  String toString() => 'Vector[createdTime=$createdTime, currency=$currency, data=$data, dimension=$dimension, displayName=$displayName, file=$file, index=$index, name=$name, owner=$owner, price=$price, provider=$provider, score=$score, store=$store, text=$text, tokenCount=$tokenCount]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.createdTime != null) {
      json[r'createdTime'] = this.createdTime;
    } else {
      json[r'createdTime'] = null;
    }
    if (this.currency != null) {
      json[r'currency'] = this.currency;
    } else {
      json[r'currency'] = null;
    }
      json[r'data'] = this.data;
    if (this.dimension != null) {
      json[r'dimension'] = this.dimension;
    } else {
      json[r'dimension'] = null;
    }
    if (this.displayName != null) {
      json[r'displayName'] = this.displayName;
    } else {
      json[r'displayName'] = null;
    }
    if (this.file != null) {
      json[r'file'] = this.file;
    } else {
      json[r'file'] = null;
    }
    if (this.index != null) {
      json[r'index'] = this.index;
    } else {
      json[r'index'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.owner != null) {
      json[r'owner'] = this.owner;
    } else {
      json[r'owner'] = null;
    }
    if (this.price != null) {
      json[r'price'] = this.price;
    } else {
      json[r'price'] = null;
    }
    if (this.provider != null) {
      json[r'provider'] = this.provider;
    } else {
      json[r'provider'] = null;
    }
    if (this.score != null) {
      json[r'score'] = this.score;
    } else {
      json[r'score'] = null;
    }
    if (this.store != null) {
      json[r'store'] = this.store;
    } else {
      json[r'store'] = null;
    }
    if (this.text != null) {
      json[r'text'] = this.text;
    } else {
      json[r'text'] = null;
    }
    if (this.tokenCount != null) {
      json[r'tokenCount'] = this.tokenCount;
    } else {
      json[r'tokenCount'] = null;
    }
    return json;
  }

  /// Returns a new [Vector] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Vector? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Vector[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Vector[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Vector(
        createdTime: mapValueOfType<String>(json, r'createdTime'),
        currency: mapValueOfType<String>(json, r'currency'),
        data: json[r'data'] is Iterable
            ? (json[r'data'] as Iterable).cast<num>().toList(growable: false)
            : const [],
        dimension: mapValueOfType<int>(json, r'dimension'),
        displayName: mapValueOfType<String>(json, r'displayName'),
        file: mapValueOfType<String>(json, r'file'),
        index: mapValueOfType<int>(json, r'index'),
        name: mapValueOfType<String>(json, r'name'),
        owner: mapValueOfType<String>(json, r'owner'),
        price: num.parse('${json[r'price']}'),
        provider: mapValueOfType<String>(json, r'provider'),
        score: num.parse('${json[r'score']}'),
        store: mapValueOfType<String>(json, r'store'),
        text: mapValueOfType<String>(json, r'text'),
        tokenCount: mapValueOfType<int>(json, r'tokenCount'),
      );
    }
    return null;
  }

  static List<Vector> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Vector>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Vector.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Vector> mapFromJson(dynamic json) {
    final map = <String, Vector>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Vector.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Vector-objects as value to a dart map
  static Map<String, List<Vector>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Vector>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Vector.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

