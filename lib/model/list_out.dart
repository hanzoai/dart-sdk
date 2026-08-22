//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class ListOut {
  /// Returns a new [ListOut] instance.
  ListOut({
    this.providers = const [],
  });
  /// Providers is the whole catalog. Never null; [] when nothing is registered.
  List<ProviderView> providers;

  @override
  bool operator ==(Object other) => identical(this, other) || other is ListOut &&
    _deepEquality.equals(other.providers, providers);

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (providers.hashCode);

  @override
  String toString() => 'ListOut[providers=$providers]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'providers'] = this.providers;
    return json;
  }

  /// Returns a new [ListOut] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static ListOut? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "ListOut[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "ListOut[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return ListOut(
        providers: ProviderView.listFromJson(json[r'providers']),
      );
    }
    return null;
  }

  static List<ListOut> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <ListOut>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = ListOut.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, ListOut> mapFromJson(dynamic json) {
    final map = <String, ListOut>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = ListOut.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of ListOut-objects as value to a dart map
  static Map<String, List<ListOut>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<ListOut>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = ListOut.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

