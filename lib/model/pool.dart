//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Pool {
  /// Returns a new [Pool] instance.
  Pool({
    this.at,
    this.count,
    this.fee,
    this.locked,
    this.token0,
    this.token0Price,
    this.token1,
    this.token1Price,
    this.volume,
  });
  /// At is the pool contract's address, lowercase.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? at;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? count;

  /// Fee is the pool's tier in hundredths of a basis point — 3000 is 0.3%. It is the integer the contract stores, unconverted, so nothing here rounds a rate.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? fee;

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
  Token? token0;

  /// Token0Price is token1 per token0, and Token1Price its reciprocal, both as the indexer computed them. Neither is a price ON anything: it is the ratio the pool's reserves stand at.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token0Price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Token? token1;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? token1Price;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? volume;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Pool &&
    other.at == at &&
    other.count == count &&
    other.fee == fee &&
    other.locked == locked &&
    other.token0 == token0 &&
    other.token0Price == token0Price &&
    other.token1 == token1 &&
    other.token1Price == token1Price &&
    other.volume == volume;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (at == null ? 0 : at!.hashCode) +
    (count == null ? 0 : count!.hashCode) +
    (fee == null ? 0 : fee!.hashCode) +
    (locked == null ? 0 : locked!.hashCode) +
    (token0 == null ? 0 : token0!.hashCode) +
    (token0Price == null ? 0 : token0Price!.hashCode) +
    (token1 == null ? 0 : token1!.hashCode) +
    (token1Price == null ? 0 : token1Price!.hashCode) +
    (volume == null ? 0 : volume!.hashCode);

  @override
  String toString() => 'Pool[at=$at, count=$count, fee=$fee, locked=$locked, token0=$token0, token0Price=$token0Price, token1=$token1, token1Price=$token1Price, volume=$volume]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.at != null) {
      json[r'at'] = this.at;
    } else {
      json[r'at'] = null;
    }
    if (this.count != null) {
      json[r'count'] = this.count;
    } else {
      json[r'count'] = null;
    }
    if (this.fee != null) {
      json[r'fee'] = this.fee;
    } else {
      json[r'fee'] = null;
    }
    if (this.locked != null) {
      json[r'locked'] = this.locked;
    } else {
      json[r'locked'] = null;
    }
    if (this.token0 != null) {
      json[r'token0'] = this.token0;
    } else {
      json[r'token0'] = null;
    }
    if (this.token0Price != null) {
      json[r'token0Price'] = this.token0Price;
    } else {
      json[r'token0Price'] = null;
    }
    if (this.token1 != null) {
      json[r'token1'] = this.token1;
    } else {
      json[r'token1'] = null;
    }
    if (this.token1Price != null) {
      json[r'token1Price'] = this.token1Price;
    } else {
      json[r'token1Price'] = null;
    }
    if (this.volume != null) {
      json[r'volume'] = this.volume;
    } else {
      json[r'volume'] = null;
    }
    return json;
  }

  /// Returns a new [Pool] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Pool? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Pool[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Pool[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Pool(
        at: mapValueOfType<String>(json, r'at'),
        count: mapValueOfType<int>(json, r'count'),
        fee: mapValueOfType<int>(json, r'fee'),
        locked: mapValueOfType<String>(json, r'locked'),
        token0: Token.fromJson(json[r'token0']),
        token0Price: mapValueOfType<String>(json, r'token0Price'),
        token1: Token.fromJson(json[r'token1']),
        token1Price: mapValueOfType<String>(json, r'token1Price'),
        volume: mapValueOfType<String>(json, r'volume'),
      );
    }
    return null;
  }

  static List<Pool> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Pool>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Pool.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Pool> mapFromJson(dynamic json) {
    final map = <String, Pool>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Pool.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Pool-objects as value to a dart map
  static Map<String, List<Pool>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Pool>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Pool.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

