//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class CommerceOverview {
  /// Returns a new [CommerceOverview] instance.
  CommerceOverview({
    this.aov,
    this.available,
    this.orders,
    this.reason,
    this.revenue,
    this.source_,
  });
  /// AOV is average order value — Revenue/Orders, rounded to two places. Zero when there were no orders.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? aov;

  /// Available is false when the product-event table could not be read — the lens is reported missing rather than as zeros that look like no sales.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Orders is how many order_completed events landed in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? orders;

  /// Reason says why the lens is unavailable. Omitted when it is available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Revenue is the total those orders carried, in the events' own currency unit.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  num? revenue;

  /// Source is the warehouse table the lens read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  @override
  bool operator ==(Object other) => identical(this, other) || other is CommerceOverview &&
    other.aov == aov &&
    other.available == available &&
    other.orders == orders &&
    other.reason == reason &&
    other.revenue == revenue &&
    other.source_ == source_;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (aov == null ? 0 : aov!.hashCode) +
    (available == null ? 0 : available!.hashCode) +
    (orders == null ? 0 : orders!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (revenue == null ? 0 : revenue!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode);

  @override
  String toString() => 'CommerceOverview[aov=$aov, available=$available, orders=$orders, reason=$reason, revenue=$revenue, source_=$source_]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.aov != null) {
      json[r'aov'] = this.aov;
    } else {
      json[r'aov'] = null;
    }
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
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.revenue != null) {
      json[r'revenue'] = this.revenue;
    } else {
      json[r'revenue'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    return json;
  }

  /// Returns a new [CommerceOverview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static CommerceOverview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "CommerceOverview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "CommerceOverview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return CommerceOverview(
        aov: num.parse('${json[r'aov']}'),
        available: mapValueOfType<bool>(json, r'available'),
        orders: mapValueOfType<int>(json, r'orders'),
        reason: mapValueOfType<String>(json, r'reason'),
        revenue: num.parse('${json[r'revenue']}'),
        source_: mapValueOfType<String>(json, r'source'),
      );
    }
    return null;
  }

  static List<CommerceOverview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <CommerceOverview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = CommerceOverview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, CommerceOverview> mapFromJson(dynamic json) {
    final map = <String, CommerceOverview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = CommerceOverview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of CommerceOverview-objects as value to a dart map
  static Map<String, List<CommerceOverview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<CommerceOverview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = CommerceOverview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

