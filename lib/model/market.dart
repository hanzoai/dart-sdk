//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Market {
  /// Returns a new [Market] instance.
  Market({
    this.amm,
    this.coin,
    this.day,
    this.factory_ = const {},
    this.figures,
    this.graph,
    this.id,
    this.name,
    this.reach,
    this.rpc,
    this.slug,
  });
  /// Amm reports whether an automated market maker is deployed on this chain, which is the registry's factory addresses being present and not the indexer having rows. The two disagree in exactly the interesting case: a chain with a factory and nothing traded yet is a live venue with no history, and a chain with neither has no venue at all.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? amm;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? coin;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Day? day;

  /// Factory is the AMM's factory contracts, by generation, omitted where none is deployed. Addresses come from the registry because that is what the indexer itself ingested from; anything else is a second copy free to drift.
  Map<String, String> factory_;

  /// Figures is the chain's whole market maker, and Day its most recent active one. Both are absent unless Reach says Read, so a caller cannot mistake a zero this process never received for one the indexer computed. Day is also absent on a chain that has never traded — which reach reports as Read, so the two absences are told apart by the state beside them and never by the gap itself.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Figures? figures;

  /// Graph is where this chain's indexer answers, empty where it has none.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? graph;

  /// ID is the EVM chain id, which is what a wallet must agree with.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? id;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? name;

  /// Reach is how far the read of this chain's FIGURES got — its own, so one indexer being down describes one row and leaves the others to answer.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  Reach? reach;

  /// RPC is the chain's PUBLIC JSON-RPC, empty where the registry names only a route this process happens to have. The registry's own `rpc` field is the INDEXER's route to the node and is sometimes inside its cluster — plain HTTP on a `.svc.cluster.local` name — which is reachable from the indexer, from nothing else, and from no browser. Publishing that as the chain's endpoint hands every caller an address that cannot answer them. See [endpoint].
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? rpc;

  /// Slug is the chain's word in every indexer path — `cchain`, `zoo`. It is the value a caller passes back as `chain`, and it is NOT the chain id: `96369`, `C` and `c-chain` all answer 404 in that position.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? slug;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Market &&
    other.amm == amm &&
    other.coin == coin &&
    other.day == day &&
    _deepEquality.equals(other.factory_, factory_) &&
    other.figures == figures &&
    other.graph == graph &&
    other.id == id &&
    other.name == name &&
    other.reach == reach &&
    other.rpc == rpc &&
    other.slug == slug;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (amm == null ? 0 : amm!.hashCode) +
    (coin == null ? 0 : coin!.hashCode) +
    (day == null ? 0 : day!.hashCode) +
    (factory_.hashCode) +
    (figures == null ? 0 : figures!.hashCode) +
    (graph == null ? 0 : graph!.hashCode) +
    (id == null ? 0 : id!.hashCode) +
    (name == null ? 0 : name!.hashCode) +
    (reach == null ? 0 : reach!.hashCode) +
    (rpc == null ? 0 : rpc!.hashCode) +
    (slug == null ? 0 : slug!.hashCode);

  @override
  String toString() => 'Market[amm=$amm, coin=$coin, day=$day, factory_=$factory_, figures=$figures, graph=$graph, id=$id, name=$name, reach=$reach, rpc=$rpc, slug=$slug]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.amm != null) {
      json[r'amm'] = this.amm;
    } else {
      json[r'amm'] = null;
    }
    if (this.coin != null) {
      json[r'coin'] = this.coin;
    } else {
      json[r'coin'] = null;
    }
    if (this.day != null) {
      json[r'day'] = this.day;
    } else {
      json[r'day'] = null;
    }
      json[r'factory'] = this.factory_;
    if (this.figures != null) {
      json[r'figures'] = this.figures;
    } else {
      json[r'figures'] = null;
    }
    if (this.graph != null) {
      json[r'graph'] = this.graph;
    } else {
      json[r'graph'] = null;
    }
    if (this.id != null) {
      json[r'id'] = this.id;
    } else {
      json[r'id'] = null;
    }
    if (this.name != null) {
      json[r'name'] = this.name;
    } else {
      json[r'name'] = null;
    }
    if (this.reach != null) {
      json[r'reach'] = this.reach;
    } else {
      json[r'reach'] = null;
    }
    if (this.rpc != null) {
      json[r'rpc'] = this.rpc;
    } else {
      json[r'rpc'] = null;
    }
    if (this.slug != null) {
      json[r'slug'] = this.slug;
    } else {
      json[r'slug'] = null;
    }
    return json;
  }

  /// Returns a new [Market] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Market? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Market[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Market[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Market(
        amm: mapValueOfType<bool>(json, r'amm'),
        coin: mapValueOfType<String>(json, r'coin'),
        day: Day.fromJson(json[r'day']),
        factory_: mapCastOfType<String, String>(json, r'factory') ?? const {},
        figures: Figures.fromJson(json[r'figures']),
        graph: mapValueOfType<String>(json, r'graph'),
        id: mapValueOfType<int>(json, r'id'),
        name: mapValueOfType<String>(json, r'name'),
        reach: Reach.fromJson(json[r'reach']),
        rpc: mapValueOfType<String>(json, r'rpc'),
        slug: mapValueOfType<String>(json, r'slug'),
      );
    }
    return null;
  }

  static List<Market> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Market>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Market.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Market> mapFromJson(dynamic json) {
    final map = <String, Market>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Market.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Market-objects as value to a dart map
  static Map<String, List<Market>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Market>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Market.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

