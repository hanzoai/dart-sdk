//
// AUTO-GENERATED FILE, DO NOT MODIFY!
//
// @dart=2.18

// ignore_for_file: unused_element, unused_import
// ignore_for_file: always_put_required_named_parameters_first
// ignore_for_file: constant_identifier_names
// ignore_for_file: lines_longer_than_80_chars

part of hanzoai.cloud;

class O11yHostListResponse {
  /// Returns a new [O11yHostListResponse] instance.
  O11yHostListResponse({
    this.clusterNames = const [],
    this.endTimeBeforeRetention,
    this.isSendingK8SAgentMetrics,
    this.nodeNames = const [],
    this.records = const [],
    this.sentAnyHostMetricsData,
    this.total,
    this.type,
  });

  List<String> clusterNames;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? endTimeBeforeRetention;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? isSendingK8SAgentMetrics;

  List<String> nodeNames;

  List<O11yHostListRecord> records;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  bool? sentAnyHostMetricsData;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  int? total;

  ///
  /// Please note: This property should have been non-nullable! Since the specification file
  /// does not include a default value (using the "default:" property), however, the generated
  /// source code must fall back to having a nullable type.
  /// Consider adding a "default:" property in the specification file to hide this note.
  ///
  String? type;

  @override
  bool operator ==(Object other) => identical(this, other) || other is O11yHostListResponse &&
    _deepEquality.equals(other.clusterNames, clusterNames) &&
    other.endTimeBeforeRetention == endTimeBeforeRetention &&
    other.isSendingK8SAgentMetrics == isSendingK8SAgentMetrics &&
    _deepEquality.equals(other.nodeNames, nodeNames) &&
    _deepEquality.equals(other.records, records) &&
    other.sentAnyHostMetricsData == sentAnyHostMetricsData &&
    other.total == total &&
    other.type == type;

  @override
  int get hashCode =>
    // ignore: unnecessary_parenthesis
    (clusterNames.hashCode) +
    (endTimeBeforeRetention == null ? 0 : endTimeBeforeRetention!.hashCode) +
    (isSendingK8SAgentMetrics == null ? 0 : isSendingK8SAgentMetrics!.hashCode) +
    (nodeNames.hashCode) +
    (records.hashCode) +
    (sentAnyHostMetricsData == null ? 0 : sentAnyHostMetricsData!.hashCode) +
    (total == null ? 0 : total!.hashCode) +
    (type == null ? 0 : type!.hashCode);

  @override
  String toString() => 'O11yHostListResponse[clusterNames=$clusterNames, endTimeBeforeRetention=$endTimeBeforeRetention, isSendingK8SAgentMetrics=$isSendingK8SAgentMetrics, nodeNames=$nodeNames, records=$records, sentAnyHostMetricsData=$sentAnyHostMetricsData, total=$total, type=$type]';

  Map<String, dynamic> toJson() {
    final json = <String, dynamic>{};
      json[r'clusterNames'] = this.clusterNames;
    if (this.endTimeBeforeRetention != null) {
      json[r'endTimeBeforeRetention'] = this.endTimeBeforeRetention;
    } else {
      json[r'endTimeBeforeRetention'] = null;
    }
    if (this.isSendingK8SAgentMetrics != null) {
      json[r'isSendingK8SAgentMetrics'] = this.isSendingK8SAgentMetrics;
    } else {
      json[r'isSendingK8SAgentMetrics'] = null;
    }
      json[r'nodeNames'] = this.nodeNames;
      json[r'records'] = this.records;
    if (this.sentAnyHostMetricsData != null) {
      json[r'sentAnyHostMetricsData'] = this.sentAnyHostMetricsData;
    } else {
      json[r'sentAnyHostMetricsData'] = null;
    }
    if (this.total != null) {
      json[r'total'] = this.total;
    } else {
      json[r'total'] = null;
    }
    if (this.type != null) {
      json[r'type'] = this.type;
    } else {
      json[r'type'] = null;
    }
    return json;
  }

  /// Returns a new [O11yHostListResponse] instance and imports its values from
  /// [value] if it's a [Map], null otherwise.
  // ignore: prefer_constructors_over_static_methods
  static O11yHostListResponse? fromJson(dynamic value) {
    if (value is Map) {
      final json = value.cast<String, dynamic>();

      // Ensure that the map contains the required keys.
      // Note 1: the values aren't checked for validity beyond being non-null.
      // Note 2: this code is stripped in release mode!
      assert(() {
        requiredKeys.forEach((key) {
          assert(json.containsKey(key), 'Required key "O11yHostListResponse[$key]" is missing from JSON.');
          assert(json[key] != null, 'Required key "O11yHostListResponse[$key]" has a null value in JSON.');
        });
        return true;
      }());

      return O11yHostListResponse(
        clusterNames: json[r'clusterNames'] is Iterable
            ? (json[r'clusterNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        endTimeBeforeRetention: mapValueOfType<bool>(json, r'endTimeBeforeRetention'),
        isSendingK8SAgentMetrics: mapValueOfType<bool>(json, r'isSendingK8SAgentMetrics'),
        nodeNames: json[r'nodeNames'] is Iterable
            ? (json[r'nodeNames'] as Iterable).cast<String>().toList(growable: false)
            : const [],
        records: O11yHostListRecord.listFromJson(json[r'records']),
        sentAnyHostMetricsData: mapValueOfType<bool>(json, r'sentAnyHostMetricsData'),
        total: mapValueOfType<int>(json, r'total'),
        type: mapValueOfType<String>(json, r'type'),
      );
    }
    return null;
  }

  static List<O11yHostListResponse> listFromJson(dynamic json, {bool growable = false,}) {
    final result = <O11yHostListResponse>[];
    if (json is List && json.isNotEmpty) {
      for (final row in json) {
        final value = O11yHostListResponse.fromJson(row);
        if (value != null) {
          result.add(value);
        }
      }
    }
    return result.toList(growable: growable);
  }

  static Map<String, O11yHostListResponse> mapFromJson(dynamic json) {
    final map = <String, O11yHostListResponse>{};
    if (json is Map && json.isNotEmpty) {
      json = json.cast<String, dynamic>(); // ignore: parameter_assignments
      for (final entry in json.entries) {
        final value = O11yHostListResponse.fromJson(entry.value);
        if (value != null) {
          map[entry.key] = value;
        }
      }
    }
    return map;
  }

  // maps a json object with a list of O11yHostListResponse-objects as value to a dart map
  static Map<String, List<O11yHostListResponse>> mapListFromJson(dynamic json, {bool growable = false,}) {
    final map = <String, List<O11yHostListResponse>>{};
    if (json is Map && json.isNotEmpty) {
      // ignore: parameter_assignments
      json = json.cast<String, dynamic>();
      for (final entry in json.entries) {
        map[entry.key] = O11yHostListResponse.listFromJson(entry.value, growable: growable,);
      }
    }
    return map;
  }

  /// The list of required keys that must be present in a JSON.
  static const requiredKeys = <String>{
  };
}

