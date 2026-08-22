//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yO11yDomainsIn {
  /// Returns a new [O11yO11yDomainsIn] instance.
  O11yO11yDomainsIn({
    this.domain,
    this.end,
    this.endpoint,
    this.filter,
    this.groupBy = const [],
    this.showIp,
    this.start,
  });
  /// Domain narrows the read to one external domain (the domain view requires it).
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? domain;

  /// End is the window's end, epoch milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? end;

  /// Endpoint narrows the domain view to one endpoint.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? endpoint;

  /// Filter is an additional predicate in the query-builder filter syntax.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  O11yO11yDomainFilter? filter;

  /// GroupBy adds grouping columns to the result.
  List<O11yO11yDomainGroupBy> groupBy;

  /// ShowIP keeps rows whose domain is a bare IP address; they are dropped otherwise.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? showIp;

  /// Start is the window's start, epoch milliseconds.
  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? start;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yO11yDomainsIn &&
    other.domain == domain &&
    other.end == end &&
    other.endpoint == endpoint &&
    other.filter == filter &&
    _deepEquality.equals(other.groupBy, groupBy) &&
    other.showIp == showIp &&
    other.start == start;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (domain == null ? 0 : domain!.hashCode) +
    (end == null ? 0 : end!.hashCode) +
    (endpoint == null ? 0 : endpoint!.hashCode) +
    (filter == null ? 0 : filter!.hashCode) +
    (groupBy.hashCode) +
    (showIp == null ? 0 : showIp!.hashCode) +
    (start == null ? 0 : start!.hashCode);

  @override
  String toString() => 'O11yO11yDomainsIn[domain=$domain, end=$end, endpoint=$endpoint, filter=$filter, groupBy=$groupBy, showIp=$showIp, start=$start]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
    if (this.domain != null) {
      json[r'domain'] = this.domain;
    } else {
      json[r'domain'] = null;
    }
    if (this.end != null) {
      json[r'end'] = this.end;
    } else {
      json[r'end'] = null;
    }
    if (this.endpoint != null) {
      json[r'endpoint'] = this.endpoint;
    } else {
      json[r'endpoint'] = null;
    }
    if (this.filter != null) {
      json[r'filter'] = this.filter;
    } else {
      json[r'filter'] = null;
    }
      json[r'groupBy'] = this.groupBy;
    if (this.showIp != null) {
      json[r'show_ip'] = this.showIp;
    } else {
      json[r'show_ip'] = null;
    }
    if (this.start != null) {
      json[r'start'] = this.start;
    } else {
      json[r'start'] = null;
    }
    return json;
  }

  /// Returns a new [O11yO11yDomainsIn] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yO11yDomainsIn? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yO11yDomainsIn[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yO11yDomainsIn[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yO11yDomainsIn(
        domain: mapValueOfType<String>(json, r'domain'),
        end: mapValueOfType<int>(json, r'end'),
        endpoint: mapValueOfType<String>(json, r'endpoint'),
        filter: O11yO11yDomainFilter.fromJson(json[r'filter']),
        groupBy: O11yO11yDomainGroupBy.listFromJson(json[r'groupBy']),
        showIp: mapValueOfType<bool>(json, r'show_ip'),
        start: mapValueOfType<int>(json, r'start'),
      );
    }
    return null;
  }

  static List<O11yO11yDomainsIn> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yO11yDomainsIn>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yO11yDomainsIn.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yO11yDomainsIn> mapFromJson(dynamic json) {
    final map = <String, O11yO11yDomainsIn>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yO11yDomainsIn.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yO11yDomainsIn-objects as value to a dart map
  static Map<String, List<O11yO11yDomainsIn>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yO11yDomainsIn>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yO11yDomainsIn.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

