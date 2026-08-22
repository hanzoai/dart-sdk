//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class WebOverview {
  /// Returns a new [WebOverview] instance.
  WebOverview({
    this.available,
    this.pageviews,
    this.reason,
    this.sessions,
    this.source_,
    this.visitors,
  });
  /// Available is false when the product-event table could not be read — the lens is reported missing rather than as zeros that look like real traffic.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? available;

  /// Pageviews is how many $pageview events landed in the window.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? pageviews;

  /// Reason says why the lens is unavailable. Omitted when it is available.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? reason;

  /// Sessions is how many distinct visits they span.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? sessions;

  /// Source is the warehouse table the lens read.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? source_;

  /// Visitors is how many distinct people those pageviews came from.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? visitors;

  @override
  bool operator ==(Object other) => identical(this, other) || other is WebOverview &&
    other.available == available &&
    other.pageviews == pageviews &&
    other.reason == reason &&
    other.sessions == sessions &&
    other.source_ == source_ &&
    other.visitors == visitors;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (available == null ? 0 : available!.hashCode) +
    (pageviews == null ? 0 : pageviews!.hashCode) +
    (reason == null ? 0 : reason!.hashCode) +
    (sessions == null ? 0 : sessions!.hashCode) +
    (source_ == null ? 0 : source_!.hashCode) +
    (visitors == null ? 0 : visitors!.hashCode);

  @override
  String toString() => 'WebOverview[available=$available, pageviews=$pageviews, reason=$reason, sessions=$sessions, source_=$source_, visitors=$visitors]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.available != null) {
      json[r'available'] = this.available;
    } else {
      json[r'available'] = null;
    }
    if (this.pageviews != null) {
      json[r'pageviews'] = this.pageviews;
    } else {
      json[r'pageviews'] = null;
    }
    if (this.reason != null) {
      json[r'reason'] = this.reason;
    } else {
      json[r'reason'] = null;
    }
    if (this.sessions != null) {
      json[r'sessions'] = this.sessions;
    } else {
      json[r'sessions'] = null;
    }
    if (this.source_ != null) {
      json[r'source'] = this.source_;
    } else {
      json[r'source'] = null;
    }
    if (this.visitors != null) {
      json[r'visitors'] = this.visitors;
    } else {
      json[r'visitors'] = null;
    }
    return json;
  }

  /// Returns a new [WebOverview] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static WebOverview? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "WebOverview[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "WebOverview[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return WebOverview(
        available: mapValueOfType<bool>(json, r'available'),
        pageviews: mapValueOfType<int>(json, r'pageviews'),
        reason: mapValueOfType<String>(json, r'reason'),
        sessions: mapValueOfType<int>(json, r'sessions'),
        source_: mapValueOfType<String>(json, r'source'),
        visitors: mapValueOfType<int>(json, r'visitors'),
      );
    }
    return null;
  }

  static List<WebOverview> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <WebOverview>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = WebOverview.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, WebOverview> mapFromJson(dynamic json) {
    final map = <String, WebOverview>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = WebOverview.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of WebOverview-objects as value to a dart map
  static Map<String, List<WebOverview>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<WebOverview>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = WebOverview.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

