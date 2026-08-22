//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class Funnel {
  /// Returns a new [Funnel] instance.
  Funnel({
    this.available,
    this.orders,
    this.pageviews,
    this.revenue,
    this.signups,
    this.visitors,
    this.windowDays,
  });
  /// Available separates \"this org has no traffic\" from \"we could not ask\". False means the warehouse was unreachable or the org has emitted nothing at all, and every count below is then a placeholder zero rather than a measurement — a caller must read this before reading any of them.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Orders counts completed orders in the window — purchases, not carts started.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orders;

  /// Pageviews counts page events in the window, one per view rather than per person, so a single visitor reading ten pages counts ten.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageviews;

  /// Revenue is the sum of the amounts those orders reported, in whatever currency the beacon stamped on them (major units, e.g. 49.5 for $49.50) — NOT cents, and not converted to a single currency. Contrast revenueCents on the profile, which is the money of record.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? revenue;

  /// Signups counts completed signups in the window, the step where an anonymous visitor becomes somebody with an account.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? signups;

  /// Visitors is the number of DISTINCT people seen in the window, counted by the beacon's distinct id — so it is unique visitors, not sessions and not views.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visitors;

  /// WindowDays is the length of the trailing window every count covers, so a reader knows whether 40 signups is a month or a day.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? windowDays;

  @override
  bool operator ==(Object other) => identical(this, other) || other is Funnel &&
    other.available == available &&
    other.orders == orders &&
    other.pageviews == pageviews &&
    other.revenue == revenue &&
    other.signups == signups &&
    other.visitors == visitors &&
    other.windowDays == windowDays;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (orders == null ? 0 : orders!.hashCode) +
    (pageviews == null ? 0 : pageviews!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (signups == null ? 0 : signups!.hashCode) +
    (visitors == null ? 0 : visitors!.hashCode) +
    (windowDays == null ? 0 : windowDays!.hashCode);

  @override
  String toString() => 'Funnel[available=$available, orders=$orders, pageviews=$pageviews, revenue=$revenue, signups=$signups, visitors=$visitors, windowDays=$windowDays]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.orders != null) {
      json[r'orders'] = this.orders;
    } else {
      json[r'orders'] = null;
    }
    if (this.pageviews != null) {
      json[r'pageviews'] = this.pageviews;
    } else {
      json[r'pageviews'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
    if (this.signups != null) {
      json[r'signups'] = this.signups;
    } else {
      json[r'signups'] = null;
    }
    if (this.visitors != null) {
      json[r'visitors'] = this.visitors;
    } else {
      json[r'visitors'] = null;
    }
    if (this.windowDays != null) {
      json[r'windowDays'] = this.windowDays;
    } else {
      json[r'windowDays'] = null;
    }
    return json;
  }

  /// Returns a new [Funnel] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static Funnel? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "Funnel[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "Funnel[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return Funnel(
        available: mapValueOfType<bool>(json, r'available'),
        orders: mapValueOfType<int>(json, r'orders'),
        pageviews: mapValueOfType<int>(json, r'pageviews'),
        revenue: num.parse('${json[r'revenue']}'),
        signups: mapValueOfType<int>(json, r'signups'),
        visitors: mapValueOfType<int>(json, r'visitors'),
        windowDays: mapValueOfType<int>(json, r'windowDays'),
      );
    }
    return null;
  }

  static List<Funnel> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <Funnel>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = Funnel.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, Funnel> mapFromJson(dynamic json) {
    final map = <String, Funnel>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = Funnel.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of Funnel-objects as value to a dart map
  static Map<String, List<Funnel>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<Funnel>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = Funnel.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

